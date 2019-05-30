class AwsSso < Formula
  desc "Tool to generate temporary AWS credentials using Okta SSO"
  homepage "https://github.com/homebrew-formulae/homebrew-aws-sso/homebrew-aws-sso.git"

  url "https://github.com/Ensighten/homebrew-formulae/releases/download/v1.5.3/aws-profile_1.5.3_mac.tbz2"
  sha256 "83d71f77553aa10bd4e93d33c11fd6fc47952a1796adf9e044177615dd584718"
  version "1.5.3"

  bottle :unneeded

  def install
    bin.install "aws-profile"
  end

  test do
    system "aws-profile", "version"
  end
end
