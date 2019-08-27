class AwsSso < Formula
  desc "Tool to generate temporary AWS credentials using Okta SSO"
  homepage "https://github.com/homebrew-formulae/homebrew-aws-sso/homebrew-aws-sso.git"

  url "https://github.com/Ensighten/homebrew-formulae/releases/download/v1.5.6/aws-profile_1.5.6_mac.tbz2"
  sha256 "0843453f62a2323dadd024813509ec555279dfd0e52363de2e0c1173a2ad9712"
  version "1.5.6"

  bottle :unneeded

  def install
    bin.install "aws-profile"
  end

  test do
    system "aws-profile", "version"
  end
end
