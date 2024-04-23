class DumbInit < Formula
  desc "A simple process supervisor that forwards signals to children."
  homepage "https://github.com/Yelp/dumb-init"

  version "1.2.5"
  on_arm do
    url "https://github.com/Ensighten/homebrew-formulae/releases/tag/v#{version}.dumb-init/dumb-init-darwin-arm.tar.gz"
    sha256 "87c1fff7d3dd9ed582cce0f72928e85b8a3df84548ce0ad2b93020de4e31c209"
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
