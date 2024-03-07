cask 'devbox' do 
  arch arm: "arm", intel: "intel"
  
  version '0.91.1-ens001'
  sha256 arm:   '8ca421cd663bfaab4082e74abdb690ce4d969a27b8487ad3e311dc8c3b4d861c',
         intel: 'a9c54092b2eda33d2ca5bb61f50350cbf7daeeba4d680bba48734710901de088'

  url "https://github.com/Ensighten/homebrew-formulae/releases/download/v#{version}.devbox/devbox-darwin-#{arch}"
  name 'aws-okta'
  homepage 'https://github.com/kadaan/devbox'

  binary 'devbox'
end
