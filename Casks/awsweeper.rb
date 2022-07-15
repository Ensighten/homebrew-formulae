cask 'awsweeper' do
  version '0.0.13'
  sha256 '760e611083b3e6f8477c762dfe0e47c8452257467ff38de8ccb699b1ebd824f0'

  url "https://github.com/Ensighten/homebrew-formulae/releases/download/v#{version}.awsweeper/awsweeper-darwin.dmg"
  name 'awsweeper'
  homepage 'https://github.com/kadaan/awsweeper'

  binary 'awsweeper'
end
