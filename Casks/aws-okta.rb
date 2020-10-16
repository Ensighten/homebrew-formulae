cask 'aws-okta' do
  version '0.0.15'
  sha256 '5400ba7898a48a2df3dd0450143b6cbbf2e9a897850f256780a415133cc5fb4a'

  url "https://github.com/Ensighten/homebrew-formulae/releases/download/v#{version}.aws-okta/aws-okta-darwin-amd64.dmg"
  name 'aws-okta'
  homepage 'https://github.com/Ensighten/aws-okta'

  binary 'aws-okta'
end
