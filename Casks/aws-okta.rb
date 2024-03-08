cask 'aws-okta' do 
  arch arm: "arm", intel: "intel"
  
  version '0.0.36'
  sha256 arm:   '5503b1b237693987175d7d60b3e9cca598057c8c5401895dfd4f7412ed39ce3c',
         intel: '39d79b2cfccf9ead0f3126d0eb0f5995302b839d98e51ad4e85d6fa2ce89c433'

  url "https://github.com/Ensighten/homebrew-formulae/releases/download/v#{version}.aws-okta/aws-okta-darwin-#{arch}.dmg"
  name 'aws-okta'
  homepage 'https://github.com/Ensighten/aws-okta'

  binary 'aws-okta'
end
