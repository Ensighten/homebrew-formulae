cask 'aws-okta' do 
  arch arm: "arm", intel: "intel"
  
  version '0.0.41'
  sha256 arm:   '4dc0c410677314132c37aef6d6bb1b1429ea9314189f42ff816b2db3a90948b5',
         intel: '385a9a20da8bdd695cd040473d5912d0ef2005c548edb49ba12ea06d78e9dea0'

  url "https://github.com/Ensighten/homebrew-formulae/releases/download/v#{version}.aws-okta/aws-okta-darwin-#{arch}.dmg"
  name 'aws-okta'
  homepage 'https://github.com/Ensighten/aws-okta'

  binary 'aws-okta'
end
