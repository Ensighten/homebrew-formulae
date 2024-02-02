cask 'aws-okta' do 
  version '0.0.27'
  sha256 arm:   'e86345ca2a187ac895a8706f6ae650bed11a5876611e937b5345cf2d54a467de',
         intel: '1cfbd1aa4b305e4ecb1f0b92e704e37a78ba7351ff9b61aae7916fcf57956e7c'

  url "https://github.com/Ensighten/homebrew-formulae/releases/download/v#{version}.aws-okta/aws-okta-darwin-#{arch}.dmg"
  name 'aws-okta'
  homepage 'https://github.com/Ensighten/aws-okta'

  binary 'aws-okta'
end
