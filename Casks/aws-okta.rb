cask 'aws-okta' do
  version '0.0.8'
  sha256 'cf43d68b46892e22b215a09b5010075d4f73eae85db1a4f4c36408dcfc133723'

  url "https://github.com/Ensighten/homebrew-formulae/releases/download/v#{version}.aws-okta/aws-okta-darwin-amd64.dmg"
  name 'aws-okta'
  homepage 'https://github.com/Ensighten/aws-okta'

  binary 'aws-okta'
end
