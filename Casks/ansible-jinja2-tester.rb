cask 'ansible-jinja2-tester' do
    version '0.0.1'
    sha256 'ddde0d28e00b28c098b936f17b2d886653c570bfeac3db6204d7af44506d240b'
  
    url "https://github.com/Ensighten/homebrew-formulae/releases/download/v#{version}.ansible-jinja2-tester/Ansible.Jinja2.Tester.dmg"
    name 'Ansible Jinja2 Tester'
    homepage 'https://github.com/kadaan/ansible-jinja2-tester'
  
    app 'Ansible Jinja2 Tester.app'
  end
  