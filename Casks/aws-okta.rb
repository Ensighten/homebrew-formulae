cask 'aws-okta' do 
  arch arm: "arm", intel: "intel"
  
  version '0.0.31'
  sha256 arm:   'd1ac9ea00a1df6a979ae106f8e9479677a1bfe26d31f603d4c5379742ae5514b',
         intel: 'd19649dac17b7d8000db93e3db69c9a77c1636dedefd1297f399ec4d36988695'

  url "https://github.com/Ensighten/homebrew-formulae/releases/download/v#{version}.aws-okta/aws-okta-darwin-#{arch}.dmg"
  name 'aws-okta'
  homepage 'https://github.com/Ensighten/aws-okta'

  binary 'aws-okta'
end
