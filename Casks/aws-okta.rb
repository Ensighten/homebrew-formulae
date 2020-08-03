cask 'aws-okta' do
  version '0.0.4'
  sha256 '1c3f80363dd9a1553bac385a4c4e6d15dd9c6032fcb12e2efa7cc29bd9fa8faa'

  url "https://github.com/Ensighten/homebrew-formulae/releases/download/v#{version}.aws-okta/aws-okta-darwin-amd64.dmg"
  name 'aws-okta'
  homepage 'https://github.com/Ensighten/aws-okta'

  binary 'aws-okta'
end
