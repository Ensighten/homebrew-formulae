cask 'aws-okta' do
  version '0.0.3'
  sha256 '274a43457115f37b8ee82a8dfbe3f72769665e93b00224b749fc6a3fdd13564e'

  url "https://github.com/Ensighten/homebrew-formulae/releases/download/v#{version}.aws-okta/aws-okta-darwin-amd64.dmg"
  name 'aws-okta'
  homepage 'https://github.com/Ensighten/aws-okta'

  binary 'aws-okta'
end
