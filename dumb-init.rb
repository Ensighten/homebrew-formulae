class DumbInit < Formula
  desc "A simple process supervisor that forwards signals to children."
  homepage "https://github.com/Yelp/dumb-init"

  arch arm: "arm", intel: "intel"

  version "1.2.5"
  sha256 arm:   '8ece8d16f74474481043a6dbaff8296c3968fcf13d7729b75330c7333eaa398a',
         intel: 'fc256f98ca53ae52acda2e8ec806a08794ffb41676fdeb41cb3c8ea51f1d7a6b'

  url "https://github.com/Ensighten/homebrew-formulae/releases/tag/v#{version}.dumb-init/dumb-init-darwin-#{arch}.tar.bz2"

  def install
    bin.install "dumb-init"
  end

  test do
    system "dumb-init", "--help"
  end
end
