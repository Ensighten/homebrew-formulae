class AwsSso < Formula
  desc "Tool to generate temporary AWS credentials using Okta SSO"
  homepage "https://github.com/homebrew-formulae/homebrew-aws-sso/homebrew-aws-sso.git"

  url "https://github.com/Ensighten/homebrew-formulae/releases/download/v1.5.5/aws-profile_1.5.5_mac.tbz2"
  sha256 "7679aa3ebdc129e0c3f30c6897db1d21e5f1874d5eb58eaf28c5ebd21a303cba"
  version "1.5.5"

  bottle :unneeded

  def install
    bin.install "aws-profile"
  end

  test do
    system "aws-profile", "version"
  end
end
