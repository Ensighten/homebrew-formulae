cask 'aws-okta' do
  version '0.0.7'
  sha256 '9cbcb2d6e6245279eb7bfe07b94365e80da974ecee71baef218a5640785c0e74'

  url "https://github.com/Ensighten/homebrew-formulae/releases/download/v#{version}.aws-okta/aws-okta-darwin-amd64.dmg"
  name 'aws-okta'
  homepage 'https://github.com/Ensighten/aws-okta'

  binary 'aws-okta'
end
