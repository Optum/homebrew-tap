class Sourcehawk < Formula

  desc "Sourcehawk is an extensible compliance as code tool which allows development teams to run compliance scans on their source code."
  homepage "https://optum.github.io/sourcehawk"
  license "GPL-3.0"

  url "https://github.com/Optum/sourcehawk/releases/download/v0.5.1/sourcehawk-0.5.1-darwin-x86_64.tar.gz"
  sha256 "65c2ee80c1593adea9f48a35053071f7917707444b04299c7ffdf84e0953722e"

  version "0.5.1"
  revision 0

  def install

    bin.mkpath
    bin.install "sourcehawk"

    bash_completion.mkpath
    bash_completion.install "sourcehawk-bash-completion.sh"

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
    assert_equal "Sourcehawk v0.5.1", shell_output("#{bin}/sourcehawk -V").chomp
  end

end
