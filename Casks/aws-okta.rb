cask 'aws-okta' do
  version '0.0.19'
  sha256 '99834470318caf811823823504828ca8dd1ecebcc6bb308817840628d973854e'

  url "https://github.com/Ensighten/homebrew-formulae/releases/download/v#{version}.aws-okta/aws-okta-darwin-amd64.dmg"
  name 'aws-okta'
  homepage 'https://github.com/Ensighten/aws-okta'

  binary 'aws-okta'
end
