cask 'aws-okta' do
  version '0.0.11'
  sha256 '76445632f704a80c375622d091ef8712501fc3f56b3bb3329172837cb394e7dc'

  url "https://github.com/Ensighten/homebrew-formulae/releases/download/v#{version}.aws-okta/aws-okta-darwin-amd64.dmg"
  name 'aws-okta'
  homepage 'https://github.com/Ensighten/aws-okta'

  binary 'aws-okta'
end
