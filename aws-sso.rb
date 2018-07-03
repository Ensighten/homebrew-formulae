class AwsSso < Formula
  desc "Tool to generate temporary AWS credentials using Okta SSO"
  homepage "https://github.com/homebrew-formulae/homebrew-aws-sso/homebrew-aws-sso.git"

  url "https://github.com/Ensighten/homebrew-formulae/releases/download/v1.5.1/aws-profile_1.5.1_mac.tbz2"
  sha256 "18bf2656db7c0bf92c80b4ecc09aaa2a2051b5701b5fa8ad6a36faaf85aa8c98"
  version "1.5.1"

  bottle :unneeded

  def install
    bin.install "aws-profile"
  end

  test do
    system "aws-profile", "version"
  end
end
