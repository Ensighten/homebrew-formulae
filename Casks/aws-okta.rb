cask 'aws-okta' do 
  arch arm: "arm", intel: "intel"
  
  version '0.0.32'
  sha256 arm:   '97155c450c2b29a09cac8bc611e477cc79ec547d91d125c864f6715c5076c41d',
         intel: 'fa999a60fee910761a8b894d44d1acc92145c26d5a00bedf838bbf2c3780a7b8'

  url "https://github.com/Ensighten/homebrew-formulae/releases/download/v#{version}.aws-okta/aws-okta-darwin-#{arch}.dmg"
  name 'aws-okta'
  homepage 'https://github.com/Ensighten/aws-okta'

  binary 'aws-okta'
end
