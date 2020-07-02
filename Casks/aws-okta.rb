cask 'aws-okta' do
  version '0.0.1'
  sha256 'a42aaa962d314b10c63982c67a94d13d47a43d36dc3332f0ac75f8cd65498753'

  url "https://github.com/Ensighten/homebrew-formulae/releases/download/v#{version}.aws-okta/aws-okta-darwin-amd64.dmg"
  name 'aws-okta'
  homepage 'https://github.com/Ensighten/aws-okta'

  binary 'aws-okta'
end
