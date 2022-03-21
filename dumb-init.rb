class DumbInit < Formula
  desc "A simple process supervisor that forwards signals to children."
  homepage "https://github.com/Yelp/dumb-init"

  url "https://github.com/Ensighten/homebrew-formulae/releases/download/v1.2.2.dumbinit/dumb-init_1.2.2_mac.tar.bz2"
  sha256 "4a3fc83f690156bdb1d80d3e181583f02265dfbb1f2c41935d79842ce0c4af90"
  version "1.2.2"

  def install
    bin.install "dumb-init"
  end

  test do
    system "dumb-init", "--help"
  end
end
