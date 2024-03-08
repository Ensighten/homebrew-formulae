cask 'aws-okta' do 
  arch arm: "arm", intel: "intel"
  
  version '0.0.35'
  sha256 arm:   '25fd89e4669bb2ef057a9f1e8ed1f44d8f877a1e5379e3d8b88702dd042ea3ed',
         intel: '8daf691b428f35011aaf9eb8552e42b1fc3565836348149296193d6102e5d985'

  url "https://github.com/Ensighten/homebrew-formulae/releases/download/v#{version}.aws-okta/aws-okta-darwin-#{arch}.dmg"
  name 'aws-okta'
  homepage 'https://github.com/Ensighten/aws-okta'

  binary 'aws-okta'
end
