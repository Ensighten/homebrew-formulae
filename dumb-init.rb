class DumbInit < Formula
  desc "A simple process supervisor that forwards signals to children."
  homepage "https://github.com/Yelp/dumb-init"

  version "1.2.5"
  on_arm do
    url "https://github.com/Ensighten/homebrew-formulae/releases/tag/v#{version}.dumb-init/dumb-init-darwin-arm.tar.gz"
    sha256 "0573a894728cad7acdbb36e3806f989d5946e280308a82e6536b26f27934baed"
  end
  on_intel do
    url "https://github.com/Ensighten/homebrew-formulae/releases/tag/v#{version}.dumb-init/dumb-init-darwin-intel.tar.gz"
    sha256 "2eb8ba7a24ffc5657fa0935c6f570d58adf95be7ec152fbe07bdfbb4ad54f3b5"
  end
  
  def install
    bin.install "dumb-init"
  end

  test do
    system "dumb-init", "--help"
  end
end
