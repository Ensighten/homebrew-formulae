cask 'awsweeper' do
  version '0.0.13'
  sha256 '468b62c748c3489fba3052a0b7fa77a86c3bd5d7d845fa650a6cd3544d61e9ec'

  url "https://github.com/Ensighten/homebrew-formulae/releases/download/v#{version}.awsweeper/awsweeper-darwin.dmg"
  name 'awsweeper'
  homepage 'https://github.com/kadaan/awsweeper'

  binary 'awsweeper'
end
