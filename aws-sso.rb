class AwsSso < Formula
  desc "Tool to generate temporary AWS credentials using Okta SSO"
  homepage "https://bitbucket.org/ensighten-ondemand/aws_sso.git"
  version '1.3.0'

  # This will prompt you for your Bitbucket password... kind of a pain.
  # TODO: Use git protocol?
  url "https://bitbucket.org/ensighten-ondemand/aws_sso.git", :tag => version
  head "https://bitbucket.org/ensighten-ondemand/aws_sso.git", :branch => 'master'

  brew_deps = %w[
    python
    libxml2
  ]

  brew_deps.each do |x|
	depends_on x
  end

  py_deps = %w[
    r/requests/requests-2.7.0 398a3db6d61899d25fd4a06c6ca12051b0ce171d705decd7ed5511517b4bb93d
    b/beautifulsoup4/beautifulsoup4-4.4.1 87d4013d0625d4789a4f56b8d79a04d5ce6db1152bb65f1d39744f7709a366b4
    b/boto/boto-2.38.0 d9083f91e21df850c813b38358dc83df16d7f253180a1344ecfedce24213ecf2
    P/PyYAML/PyYAML-3.11 c36c938a872e5ff494938b33b14aaa156cb439ec67548fcab3535bb78b0846e8
    l/lxml/lxml-3.5.0 349f93e3a4b09cc59418854ab8013d027d246757c51744bf20069bc89016f578
  ]

  py_deps.each_slice(2) do |x, y|
    resource x do
      url "https://pypi.python.org/packages/source/#{x}.tar.gz"
      sha256 "#{y}"
    end
  end

  def install
    vendor_site_packages = libexec/"vendor/lib/python2.7/site-packages"
    ENV.prepend_create_path "PYTHONPATH", vendor_site_packages

    resources.each do |r|
      r.stage do
        system "python", *Language::Python.setup_install_args(libexec/"vendor")
      end
    end

    ENV.prepend_create_path "PYTHONPATH", libexec/"lib/python2.7/site-packages"
    system "python", *Language::Python.setup_install_args(libexec)

    bin.install Dir["#{libexec}/bin/*"]
    bin.env_script_all_files(libexec/"bin", :PYTHONPATH => ENV["PYTHONPATH"])
  end

  test do
    system "aws-sso", "version"
  end

  def caveats; <<-EOS.undent
      aws-sso requires some setup before it's ready to use. Run `aws-sso setup` to set up a config file.

      For more detailed info, see the README on Bitbucket: https://bitbucket.org/ensighten-ondemand/aws_sso/src/master/README.md
    EOS
  end
end

