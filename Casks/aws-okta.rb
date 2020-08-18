cask 'aws-okta' do
  version '0.0.9'
  sha256 '8e00f1e4c37e466d816a332107e60b6be3b66627948a0c2200ecb2fa8eb0f09d'

  url "https://github.com/Ensighten/homebrew-formulae/releases/download/v#{version}.aws-okta/aws-okta-darwin-amd64.dmg"
  name 'aws-okta'
  homepage 'https://github.com/Ensighten/aws-okta'

  binary 'aws-okta'
end
