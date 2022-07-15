cask 'awsweeper' do
  version '0.0.13'
  sha256 'cd953029c8cc3cbf585639feabce07e1a64143e41f3547ad7e97ef6dfb16d19a'

  url "https://github.com/Ensighten/homebrew-formulae/releases/download/v#{version}.awsweeper/awsweeper-darwin.dmg"
  name 'awsweeper'
  homepage 'https://github.com/kadaan/awsweeper'

  binary 'awsweeper'
end
