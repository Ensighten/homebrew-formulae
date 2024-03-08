cask 'devbox' do 
  version '0.9.1-ens001'
  sha256 '7649ccc4d40c1b79adaf3b5604e04bd6b2b9b2043d686badaffff7122f4e0f32'

  url "https://github.com/Ensighten/homebrew-formulae/releases/download/v#{version}.devbox/devbox-darwin.dmg"
  name 'devbox'
  homepage 'https://github.com/kadaan/devbox'

  binary 'devbox'
end
