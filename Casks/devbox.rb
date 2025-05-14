cask 'devbox' do 
  version '0.10.1-ens001'
  sha256 'dff4d7222717ab09d0e072f8220db460dd9e8c0e224829fe8c1af16fa33eb500'

  url "https://github.com/Ensighten/homebrew-formulae/releases/download/v#{version}.devbox/devbox-darwin.dmg"
  name 'devbox'
  homepage 'https://github.com/kadaan/devbox'

  binary 'devbox'
end
