class DumbInit < Formula
  desc "A simple process supervisor that forwards signals to children."
  homepage "https://github.com/Yelp/dumb-init"

  version "1.2.5"
  on_arm do
    url "https://github.com/Ensighten/homebrew-formulae/releases/tag/v#{version}.dumb-init/dumb-init-darwin-arm.tar.bz2"
    sha256 "da38340f51596cf6e9b450b588f0aca1889597c9e5ced744e53e7e4a0dc5bd2c"
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
