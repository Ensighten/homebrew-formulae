cask 'aws-okta' do
  version '0.0.18'
  sha256 '299f68e32d98041bc8e400456bda147542e46d18f1bf540fdd8ed4c3b79e7542'

  url "https://github.com/Ensighten/homebrew-formulae/releases/download/v#{version}.aws-okta/aws-okta-darwin-amd64.dmg"
  name 'aws-okta'
  homepage 'https://github.com/Ensighten/aws-okta'

  binary 'aws-okta'
end
