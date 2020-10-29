cask 'aws-okta' do
  version '0.0.16'
  sha256 '829f07f0feb302434cb7681dcb79a6b941d0a0d46b5cf59cd565a59832930074'

  url "https://github.com/Ensighten/homebrew-formulae/releases/download/v#{version}.aws-okta/aws-okta-darwin-amd64.dmg"
  name 'aws-okta'
  homepage 'https://github.com/Ensighten/aws-okta'

  binary 'aws-okta'
end
