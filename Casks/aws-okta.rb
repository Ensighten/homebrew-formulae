cask 'aws-okta' do
  version '0.0.14'
  sha256 '05d0fde9bc4d5112559699b8cd54b35fb8c03720efc367e875965194dd3ff879'

  url "https://github.com/Ensighten/homebrew-formulae/releases/download/v#{version}.aws-okta/aws-okta-darwin-amd64.dmg"
  name 'aws-okta'
  homepage 'https://github.com/Ensighten/aws-okta'

  binary 'aws-okta'
end
