cask 'aws-okta' do
  version '0.0.26'
  sha256 'fb3cf87544d4d321dc4101ed66d3fe9e46cf199d433c8d164bec362eed3e9fe2'

  url "https://github.com/Ensighten/homebrew-formulae/releases/download/v#{version}.aws-okta/aws-okta-darwin.dmg"
  name 'aws-okta'
  homepage 'https://github.com/Ensighten/aws-okta'

  binary 'aws-okta'
end
