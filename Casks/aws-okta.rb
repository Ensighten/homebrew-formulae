cask 'aws-okta' do
  version '0.0.17'
  sha256 '6ac3783e5253e3d38b3701b7075a38cb544f0c2d258e64faacaf39cc5a9a8f6e'

  url "https://github.com/Ensighten/homebrew-formulae/releases/download/v#{version}.aws-okta/aws-okta-darwin-amd64.dmg"
  name 'aws-okta'
  homepage 'https://github.com/Ensighten/aws-okta'

  binary 'aws-okta'
end
