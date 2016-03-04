class AwsSso < Formula
  desc "Tool to generate temporary AWS credentials using Okta SSO"
  homepage "https://bitbucket.org/ensighten-ondemand/aws_sso.git"
  version '1.0'

  # This will prompt you for your Bitbucket password... kind of a pain.
  # TODO: Use git protocol?
  head "https://bitbucket.org/ensighten-ondemand/aws_sso.git", :tag => version

  brew_deps = %w[
    python
    libxml2
  ]

  brew_deps.each do |x|
	depends_on x
  end

  py_deps = %w[
    r/requests/requests-2.7.0
    b/beautifulsoup4/beautifulsoup4-4.4.1
    b/boto/boto-2.38.0
    P/PyYAML/PyYAML-3.11
    l/lxml/lxml-3.5.0
  ]

  py_deps.each do |x|
    resource x do
      url "https://pypi.python.org/packages/source/#{x}.tar.gz"
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

	# TODO: introduce man files to aws-sso
    # man1.install Dir["docs/man/man1/*.1"]

    bin.install Dir["#{libexec}/bin/*"]
    bin.env_script_all_files(libexec/"bin", :PYTHONPATH => ENV["PYTHONPATH"])
  end

  # TODO: re-add tests
end

