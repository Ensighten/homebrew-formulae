cask 'aws-okta' do
  version '0.0.13'
  sha256 'e0a2482261f065fc18c33394d69342ebb929e0c66f37338246e851c7dd874075'

  url "https://github.com/Ensighten/homebrew-formulae/releases/download/v#{version}.aws-okta/aws-okta-darwin-amd64.dmg"
  name 'aws-okta'
  homepage 'https://github.com/Ensighten/aws-okta'

  binary 'aws-okta'
end
