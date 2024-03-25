cask 'aws-okta' do 
  arch arm: "arm", intel: "intel"
  
  version '0.0.40'
  sha256 arm:   '885aaaf078ac9af2599402ffa67f1edb8848e4867ed3b182c7606f8f8b0d20c4',
         intel: '9cc26caf7f1eba0648e8b780e00b814161e88554e6df3a222d571986619447a0'

  url "https://github.com/Ensighten/homebrew-formulae/releases/download/v#{version}.aws-okta/aws-okta-darwin-#{arch}.dmg"
  name 'aws-okta'
  homepage 'https://github.com/Ensighten/aws-okta'

  binary 'aws-okta'
end
