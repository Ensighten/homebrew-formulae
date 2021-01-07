cask 'aws-okta' do
  version '0.0.21'
  sha256 'c6e864ad6b3015f7711d06ce929a0f13526ab8884efd1115570ca42f67ca2e97'

  url "https://github.com/Ensighten/homebrew-formulae/releases/download/v#{version}.aws-okta/aws-okta-darwin-amd64.dmg"
  name 'aws-okta'
  homepage 'https://github.com/Ensighten/aws-okta'

  binary 'aws-okta'
end
