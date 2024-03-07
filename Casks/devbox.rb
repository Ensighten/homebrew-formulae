cask 'devbox' do 
  arch arm: "arm", intel: "intel"
  
  version '0.91.1-ens001'
  sha256 arm:   '1521c7d9137d84f5260704d48e662d3f385dcc2fa8069abe7b7ece2962d9ed74',
         intel: '66e79bdfced1a0b804d7ce478607bf3dafeffe1bc1ea4f3a7bf5c8b385ee2613'

  url "https://github.com/Ensighten/homebrew-formulae/releases/download/v#{version}.devbox/devbox-darwin-#{arch}.tar.gz"
  name 'devbox'
  homepage 'https://github.com/kadaan/devbox'

  binary 'devbox'
end
