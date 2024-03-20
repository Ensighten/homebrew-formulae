cask 'aws-okta' do 
  arch arm: "arm", intel: "intel"
  
  version '0.0.38'
  sha256 arm:   '9978ca68b049a66100c2fe9e3fc443e7570da7a041e59efc678d27299a6c1af5',
         intel: 'c3d91d466b56a91d75f5db2bbadc78e6346cab6385dd93969e8138db825109c4'

  url "https://github.com/Ensighten/homebrew-formulae/releases/download/v#{version}.aws-okta/aws-okta-darwin-#{arch}.dmg"
  name 'aws-okta'
  homepage 'https://github.com/Ensighten/aws-okta'

  binary 'aws-okta'
end
