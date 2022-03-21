class AwsSso < Formula
  desc "Tool to generate temporary AWS credentials using Okta SSO"
  homepage "https://github.com/homebrew-formulae/homebrew-aws-sso/homebrew-aws-sso.git"

  url "https://github.com/Ensighten/homebrew-formulae/releases/download/v1.5.7/aws-profile_1.5.7_mac.tbz2"
  sha256 "646620608adeeebba4a17ef7e33e6338d5f791c358b2837dc61db0728e786482"
  version "1.5.7"

  def install
    bin.install "aws-profile"
  end

  test do
    system "aws-profile", "version"
  end
end
