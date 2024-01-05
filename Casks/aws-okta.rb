cask 'aws-okta' do
  version '0.0.24'
  sha256 '7d5c8456686fa16fd6c847d049ce57631939f04ac485f977179c74f218d34dfc'

  url "https://github.com/Ensighten/homebrew-formulae/releases/download/v#{version}.aws-okta/aws-okta-darwin-amd64.dmg"
  name 'aws-okta'
  homepage 'https://github.com/Ensighten/aws-okta'

  binary 'aws-okta'
end
