class DumbInit < Formula
  desc "A simple process supervisor that forwards signals to children."
  homepage "https://github.com/Yelp/dumb-init"

  url "https://github.com/Ensighten/homebrew-formulae/releases/download/v1.2.2.dumbinit/dumb-init_1.2.2_mac.bz2"
  sha256 "cf5c9f4f9d586e7952bf3ae5fb6f643cc568cdec939a56525ddc5f4f25ea7cb5"
  version "1.2.2"

  bottle :unneeded

  def install
    bin.install "dumb-init"
  end

  test do
    system "dumb-init", "--help"
  end
end
