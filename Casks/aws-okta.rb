cask 'aws-okta' do
  version '0.0.2'
  sha256 'c6822ae6bc0eed0dc0a2c8873cf27cd9494eed4c3b424f1652e029e4c81fab6e'

  url "https://github.com/Ensighten/homebrew-formulae/releases/download/v#{version}.aws-okta/aws-okta-darwin-amd64.dmg"
  name 'aws-okta'
  homepage 'https://github.com/Ensighten/aws-okta'

  binary 'aws-okta'
end
