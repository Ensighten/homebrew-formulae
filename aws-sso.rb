class AwsSso < Formula
  desc "Tool to generate temporary AWS credentials using Okta SSO"
  homepage "https://github.com/homebrew-formulae/homebrew-aws-sso/homebrew-aws-sso.git"

  url "https://github.com/Ensighten/homebrew-formulae/releases/download/untagged-6bea8cff89968f4c92fb/aws-profile_1.5.0_mac.tbz2"
  sha256 "966ee546b68cd97323dde3117c99607f06463a0ead0c70c88b871eca1bb4bb00"
  version "1.5.0"

  bottle :unneeded

  def install
    bin.install "aws-profile"
  end

  test do
    system "aws-profile", "version"
  end
end
