cask 'devbox' do 
  version '0.14.2-ens001'
  sha256 '9546d5891bb40c5c55590398860cf7639b8518c4e95ca0208a4b6d0655d9ef79'

  url "https://github.com/Ensighten/homebrew-formulae/releases/download/v#{version}.devbox/devbox-darwin.dmg"
  name 'devbox'
  homepage 'https://github.com/kadaan/devbox'

  binary 'devbox'
end
