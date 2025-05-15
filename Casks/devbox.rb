cask 'devbox' do 
  version '0.14.2-ens001'
  sha256 '08054e17b13cb0eb08cde1b59999568e82e93416be6decf013958d0faa17c5f6'

  url "https://github.com/Ensighten/homebrew-formulae/releases/download/v#{version}.devbox/devbox-darwin.dmg"
  name 'devbox'
  homepage 'https://github.com/kadaan/devbox'

  binary 'devbox'
end
