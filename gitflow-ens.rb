class GitflowEns < Formula
  desc "AVH edition of git-flow"
  homepage "https://github.com/kadaan/gitflow-avh"

  stable do
    url "https://github.com/Ensighten/homebrew-formulae/releases/download/v1.12.3-git-flow/gitflow-avh-1.12.3-di.tar.gz"
    sha256 "8f492ec7a075551d92e68d69c7b91322efb7cb93e09c36a98c84ccb456d995e6"

    resource "completion" do
      url "https://github.com/Ensighten/homebrew-formulae/releases/download/v1.12.3-git-flow/git-flow-completion-0.6.0.tar.gz"
      sha256 "b1b78b785aa2c06f81cc29fcf03a7dfc451ad482de67ca0d89cdb0f941f5594b"
    end
  end

  depends_on "gnu-getopt"

  conflicts_with "git-flow", :because => "Both install `git-flow` binaries and completions"

  def install
    system "make", "prefix=#{libexec}", "install"
    (bin/"git-flow").write <<~EOS
      #!/bin/bash
      export FLAGS_GETOPT_CMD=#{Formula["gnu-getopt"].opt_bin}/getopt
      exec "#{libexec}/bin/git-flow" "$@"
    EOS

    resource("completion").stage do
      bash_completion.install "git-flow-completion.bash"
      zsh_completion.install "git-flow-completion.zsh"
      fish_completion.install "git.fish"
    end
  end

  test do
    system "git", "init"
    system "#{bin}/git-flow", "init", "-d"
    system "#{bin}/git-flow", "config"
    assert_equal "develop", shell_output("git symbolic-ref --short HEAD").chomp
  end
end
