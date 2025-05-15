cask 'devbox' do 
  version '0.14.2-ens002'
  sha256 '6133901cf82d5f9f72d39da2a8043070c2429fa879a7ccb23adf2947ca6da4d7'

  url "https://github.com/Ensighten/homebrew-formulae/releases/download/v#{version}.devbox/devbox-darwin.dmg"
  name 'devbox'
  homepage 'https://github.com/kadaan/devbox'

  binary 'devbox'
end
