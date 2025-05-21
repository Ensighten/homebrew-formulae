cask 'devbox' do 
  version '0.14.2-ens002'
  sha256 '6390b356d43056c24ca917920e4e2feeda03526787b03112097a82a20bcda999'

  url "https://github.com/Ensighten/homebrew-formulae/releases/download/v#{version}.devbox/devbox-darwin.dmg"
  name 'devbox'
  homepage 'https://github.com/kadaan/devbox'

  binary 'devbox'
end
