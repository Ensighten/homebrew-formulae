cask 'devbox' do 
  version '0.10.1-ens001'
  sha256 '79569a6393a911bed4ca2b73df142444f86dc29e92a5ae5e6c079b4bd744386e'

  url "https://github.com/Ensighten/homebrew-formulae/releases/download/v#{version}.devbox/devbox-darwin.dmg"
  name 'devbox'
  homepage 'https://github.com/kadaan/devbox'

  binary 'devbox'
end
