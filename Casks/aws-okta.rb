cask 'aws-okta' do
  version '0.0.27'
  sha256 '99c3f78cd0c235262a0343e27df8b746513c62a05e9b0e2fb38f8b934be9df8d'

  url "https://github.com/Ensighten/homebrew-formulae/releases/download/v#{version}.aws-okta/aws-okta-darwin.dmg"
  name 'aws-okta'
  homepage 'https://github.com/Ensighten/aws-okta'

  binary 'aws-okta'
end
