class Sourcehawk < Formula

  desc "Sourcehawk is an extensible compliance as code tool which allows development teams to run compliance scans on their source code."
  homepage "https://optum.github.io/sourcehawk"
  license "GPL-3.0"

  url "https://github.com/Optum/sourcehawk/releases/download/v0.6.0/sourcehawk-0.6.0-darwin-x86_64.tar.gz"
  sha256 "2b2b63137a1d916126d73baf2c9c335a925b2941bab27b901b2d7fafbd899736"

  version "0.6.0"
  revision 0

  livecheck do
    url :url
    strategy :github_latest
    regex(%r{href=.*?/tag/jq[._-]v?(\d+(?:\.\d+)+)["' >]}i)
  end

  def install

    bin.mkpath
    bin.install "sourcehawk"

    bash_completion.mkpath
    bash_completion.install "sourcehawk-bash-completion.sh"

    zsh_completion.mkpath
    zsh_completion.install "sourcehawk-bash-completion.sh"

    man1.mkpath
    man1.install "sourcehawk.1.gz"
    man1.install "sourcehawk-fix.1.gz"
    man1.install "sourcehawk-flatten-config.1.gz"
    man1.install "sourcehawk-scan.1.gz"
    man1.install "sourcehawk-scan-bitbucket.1.gz"
    man1.install "sourcehawk-scan-github.1.gz"
    man1.install "sourcehawk-validate-config.1.gz"

  end

  test do
    assert_equal "Sourcehawk v#{version}", shell_output("#{bin}/sourcehawk -V").chomp
  end

end
