require "language/go"

class Terraform < Formula
  desc "Tool to build, change, and version infrastructure"
  homepage "https://www.terraform.io/"
  head "https://github.com/Ensighten/terraform.git"

  depends_on "go" => :build

  terraform_deps = %w[
    github.com/apparentlymart/go-rundeck-api master
    github.com/Azure/azure-sdk-for-go master
    github.com/Azure/go-pkcs12 master
    github.com/Ensighten/udnssdk master
    github.com/armon/circbuf master
    github.com/aws/aws-sdk-go master
    github.com/awslabs/aws-sdk-go master
    github.com/cyberdelia/heroku-go master
    github.com/dylanmei/iso8601 master
    github.com/dylanmei/winrmtest master
    github.com/fsouza/go-dockerclient master
    github.com/hashicorp/atlas-go master
    github.com/hashicorp/consul master
    github.com/hashicorp/errwrap master
    github.com/hashicorp/go-checkpoint master
    github.com/hashicorp/go-multierror master
    github.com/hashicorp/go-version master
    github.com/hashicorp/hcl master
    github.com/hashicorp/yamux master
    github.com/imdario/mergo master
    github.com/masterzen/simplexml master
    github.com/masterzen/winrm master
    github.com/masterzen/xmlpath master
    github.com/mitchellh/cli master
    github.com/mitchellh/colorstring master
    github.com/mitchellh/copystructure master
    github.com/mitchellh/go-homedir master
    github.com/mitchellh/go-linereader master
    github.com/mitchellh/gox master
    github.com/mitchellh/iochan master
    github.com/mitchellh/mapstructure master
    github.com/mitchellh/osext master
    github.com/mitchellh/packer master
    github.com/mitchellh/panicwrap master
    github.com/mitchellh/prefixedio master
    github.com/mitchellh/reflectwalk master
    github.com/nu7hatch/gouuid master
    github.com/packer-community/winrmcp master
    github.com/pborman/uuid master
    github.com/pearkes/cloudflare master
    github.com/pearkes/digitalocean master
    github.com/pearkes/dnsimple master
    github.com/pearkes/mailgun master
    github.com/rackspace/gophercloud master
    github.com/satori/go.uuid master
    github.com/soniah/dnsmadeeasy master
    github.com/vaughan0/go-ini master
    github.com/xanzy/go-cloudstack master
  ]

  terraform_deps.each_slice(2) do |x, y|
    go_resource x do
      url "https://#{x}.git", :revision => y
    end
  end

  %w[
    crypto master
    net master
    oauth2 master
    tools master
  ].each_slice(2) do |x, y|
    go_resource "golang.org/x/#{x}" do
      url "https://go.googlesource.com/#{x}.git", :revision => y
    end
  end

  go_resource "google.golang.org/api" do
    url "https://code.googlesource.com/google-api-go-client.git",
      :revision => 'master'
  end

  go_resource "google.golang.org/cloud" do
    url "https://code.googlesource.com/gocloud.git",
      :revision => 'master'
  end



  def install
    ENV["GOPATH"] = buildpath
    # For the gox buildtool used by terraform, which doesn't need to
    # get installed permanently
    ENV.append_path "PATH", buildpath

    terrapath = buildpath/"src/github.com/hashicorp/terraform"
    terrapath.install Dir["*"]
    Language::Go.stage_deps resources, buildpath/"src"

    cd "src/github.com/mitchellh/gox" do
      system "go", "build"
      buildpath.install "gox"
    end

    cd "src/golang.org/x/tools/cmd/stringer" do
      system "go", "build"
      buildpath.install "stringer"
    end

    cd terrapath do
      system "go", "test", "./..."

      mkdir "bin"
      arch = MacOS.prefer_64_bit? ? "amd64" : "386"
      system "gox", "-arch", arch,
        "-os", "darwin",
        "-output", "bin/terraform-{{.Dir}}",
        "./..."
      bin.install "bin/terraform-terraform" => "terraform"
      bin.install Dir["bin/*"]
    end
  end

  test do
    minimal = testpath/"minimal.tf"
    minimal.write <<-EOS.undent
      variable "aws_region" {
          default = "us-west-2"
      }

      variable "aws_amis" {
          default = {
              eu-west-1 = "ami-b1cf19c6"
              us-east-1 = "ami-de7ab6b6"
              us-west-1 = "ami-3f75767a"
              us-west-2 = "ami-21f78e11"
          }
      }

      # Specify the provider and access details
      provider "aws" {
          access_key = "this_is_a_fake_access"
          secret_key = "this_is_a_fake_secret"
          region = "${var.aws_region}"
      }

      resource "aws_instance" "web" {
        instance_type = "m1.small"
        ami = "${lookup(var.aws_amis, var.aws_region)}"
        count = 4
      }
    EOS
    system "#{bin}/terraform", "graph", testpath
  end
end
