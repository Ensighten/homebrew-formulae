cask 'aws-okta' do 
  arch arm: "arm", intel: "intel"
  
  version '0.0.34'
  sha256 arm:   '21c070fa9a369c9e3a6555a21628573282dab73ca3482ff95e462ffbcb8a0f8e',
         intel: 'a4230f0f838cb9650610987080bdc87831ae6d3dcd9bf163fbe8ff5651a111fc'

  url "https://github.com/Ensighten/homebrew-formulae/releases/download/v#{version}.aws-okta/aws-okta-darwin-#{arch}.dmg"
  name 'aws-okta'
  homepage 'https://github.com/Ensighten/aws-okta'

  binary 'aws-okta'
end
