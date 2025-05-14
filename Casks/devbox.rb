cask 'devbox' do 
  version '0.14.2-ens001'
  sha256 'f565884861f31593627bcbc439b41a713e1411f4de7c565940445d99bde2b24d'

  url "https://github.com/Ensighten/homebrew-formulae/releases/download/v#{version}.devbox/devbox-darwin.dmg"
  name 'devbox'
  homepage 'https://github.com/kadaan/devbox'

  binary 'devbox'
end
