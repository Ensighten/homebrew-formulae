cask 'aws-okta' do
  version '0.0.5'
  sha256 '3525fcd1f78f28c13f218e78d4420a24b0d369158dc81a25aa65507aa19c696d'

  url "https://github.com/Ensighten/homebrew-formulae/releases/download/v#{version}.aws-okta/aws-okta-darwin-amd64.dmg"
  name 'aws-okta'
  homepage 'https://github.com/Ensighten/aws-okta'

  binary 'aws-okta'
end
