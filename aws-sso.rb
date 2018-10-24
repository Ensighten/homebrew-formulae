class AwsSso < Formula
  desc "Tool to generate temporary AWS credentials using Okta SSO"
  homepage "https://github.com/homebrew-formulae/homebrew-aws-sso/homebrew-aws-sso.git"

  url "https://github.com/Ensighten/homebrew-formulae/releases/download/v1.5.2/aws-profile_1.5.2_mac.tbz2"
  sha256 "f7cd0f2fb0445f24a7f09716d7b4f411da82f3c1eea13974ec2314584e7c207b"
  version "1.5.2"

  bottle :unneeded

  def install
    bin.install "aws-profile"
  end

  test do
    system "aws-profile", "version"
  end
end
