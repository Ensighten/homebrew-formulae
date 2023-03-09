cask 'ansible-jinja2-tester' do
  version '0.0.3'
  sha256 'e038e8fcbe8de3cdfd279e07f1e6deb8e111450ae5b3a8630e1b5475a0f93191'

  url "https://github.com/Ensighten/homebrew-formulae/releases/download/v#{version}.ansible-jinja2-tester/Ansible.Jinja2.Tester.dmg"
  name 'Ansible Jinja2 Tester'
  homepage 'https://github.com/kadaan/ansible-jinja2-tester'

  app 'Ansible Jinja2 Tester.app'
end
