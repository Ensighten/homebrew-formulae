cask 'aws-okta' do
  version '0.0.6'
  sha256 'f6f9c30622f579b591d04ecc94418e0a14dc642fa20bd0cff6033c69922930a8'

  url "https://github.com/Ensighten/homebrew-formulae/releases/download/v#{version}.aws-okta/aws-okta-darwin-amd64.dmg"
  name 'aws-okta'
  homepage 'https://github.com/Ensighten/aws-okta'

  binary 'aws-okta'
end
