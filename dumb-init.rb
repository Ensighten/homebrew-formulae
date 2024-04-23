class DumbInit < Formula
  desc "A simple process supervisor that forwards signals to children."
  homepage "https://github.com/Yelp/dumb-init"

  version "1.2.5"
  on_arm do
    url "https://github.com/Ensighten/homebrew-formulae/releases/tag/v#{version}.dumb-init/dumb-init-darwin-arm.tar.bz2"
    sha256 "4c44cd734f5f84d6e2d874b5151fcdc88834f7f74a904cb7f171b533a8a40b85"
  end
  on_intel do
    url "https://github.com/Ensighten/homebrew-formulae/releases/tag/v#{version}.dumb-init/dumb-init-darwin-intel.tar.bz2"
    sha256 "5307599d4c5d69d53361180adfecff71ebc4a56778b91492e169573caf993859"
  end
  
  def install
    bin.install "dumb-init"
  end

  test do
    system "dumb-init", "--help"
  end
end
