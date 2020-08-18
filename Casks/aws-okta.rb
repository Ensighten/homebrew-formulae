cask 'aws-okta' do
  version '0.0.10'
  sha256 '4db02091d84b344d538fd508274af6b014dcdad6f1c57b1664cce9a4a8a3e0ef'

  url "https://github.com/Ensighten/homebrew-formulae/releases/download/v#{version}.aws-okta/aws-okta-darwin-amd64.dmg"
  name 'aws-okta'
  homepage 'https://github.com/Ensighten/aws-okta'

  binary 'aws-okta'
end
