cask 'aws-okta' do
  version '0.0.12'
  sha256 '415e5deff60bd249a5349d86c9211b89bb0e068c512480e9e4ade76d657182fd'

  url "https://github.com/Ensighten/homebrew-formulae/releases/download/v#{version}.aws-okta/aws-okta-darwin-amd64.dmg"
  name 'aws-okta'
  homepage 'https://github.com/Ensighten/aws-okta'

  binary 'aws-okta'
end
