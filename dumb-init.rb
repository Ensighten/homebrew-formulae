class DumbInit < Formula
  desc "A simple process supervisor that forwards signals to children."
  homepage "https://github.com/Yelp/dumb-init"

  version "1.2.5"
  on_arm do
    url "https://github.com/Ensighten/homebrew-formulae/releases/tag/v#{version}.dumb-init/dumb-init-darwin-arm.tar.bz2"
    sha256 "8ece8d16f74474481043a6dbaff8296c3968fcf13d7729b75330c7333eaa398a"
  end
  on_intel do
    url "https://github.com/Ensighten/homebrew-formulae/releases/tag/v#{version}.dumb-init/dumb-init-darwin-intel.tar.bz2"
    sha256 "fc256f98ca53ae52acda2e8ec806a08794ffb41676fdeb41cb3c8ea51f1d7a6b"
  end
  
  def install
    bin.install "dumb-init"
  end

  test do
    system "dumb-init", "--help"
  end
end
