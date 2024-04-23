class DumbInit < Formula
  desc "A simple process supervisor that forwards signals to children."
  homepage "https://github.com/Yelp/dumb-init"

  version "1.2.5"
  url "https://github.com/Ensighten/homebrew-formulae/releases/tag/v#{version}.dumb-init/dumb-init.tar.bz2"
  sha256 "44a414847309518a690dc9d86cfe8dd75788cfe23f3baa9d89088d0a89b0be72"
  
  def install
    bin.install "dumb-init"
  end

  test do
    system "dumb-init", "--help"
  end
end
