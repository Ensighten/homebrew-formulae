cask 'aws-okta' do
  version '0.0.20'
  sha256 '80c3e9d56277bf00ca5b005a46d966efb9390e4a4136e95350af21d7ec57e3a7'

  url "https://github.com/Ensighten/homebrew-formulae/releases/download/v#{version}.aws-okta/aws-okta-darwin-amd64.dmg"
  name 'aws-okta'
  homepage 'https://github.com/Ensighten/aws-okta'

  binary 'aws-okta'
end
