class AwsSso < Formula
  desc "Tool to generate temporary AWS credentials using Okta SSO"
  homepage "https://github.com/homebrew-formulae/homebrew-aws-sso/homebrew-aws-sso.git"

  url "https://github.com/Ensighten/homebrew-formulae/releases/download/v1.5.4/aws-profile_1.5.4_mac.tbz2"
  sha256 "ca6e4e233fdc6e6d34164da7e86230cc011733b06dd703f346f55aa1eae13971"
  version "1.5.4"

  bottle :unneeded

  def install
    bin.install "aws-profile"
  end

  test do
    system "aws-profile", "version"
  end
end
