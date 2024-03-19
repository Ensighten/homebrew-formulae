cask 'devbox' do 
  version '0.10.1-ens001'
  sha256 'e1c42bad525a7dfa7cc76f203ca1ad0e264ad5d9e3afbb4b9ec8fde53a69da85'

  url "https://github.com/Ensighten/homebrew-formulae/releases/download/v#{version}.devbox/devbox-darwin.dmg"
  name 'devbox'
  homepage 'https://github.com/kadaan/devbox'

  binary 'devbox'
end
