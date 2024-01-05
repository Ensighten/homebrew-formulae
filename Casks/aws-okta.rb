cask 'aws-okta' do
  version '0.0.25'
  sha256 '7f1be169a3179651bc1d31123341b698fec61e648a30cc67c72be0f10fca604e'

  url "https://github.com/Ensighten/homebrew-formulae/releases/download/v#{version}.aws-okta/aws-okta-darwin.dmg"
  name 'aws-okta'
  homepage 'https://github.com/Ensighten/aws-okta'

  binary 'aws-okta'
end
