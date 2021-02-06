class Sourcehawk < Formula

  desc "Sourcehawk is an extensible compliance as code tool which allows development teams to run compliance scans on their source code."
  homepage "https://optum.github.io/sourcehawk"
  license "GPL-3.0"

  url "https://github.com/Optum/sourcehawk/releases/download/v0.5.1/sourcehawk-0.5.1-darwin-x86_64.tar.gz"
  sha256 "c33af29f26f4f45e552379a07310b1fd068d1870a5f7b06a31155f9971948472"

  version "0.5.1"
  revision 1

  def install

    share.mkpath
    share.install "sourcehawk"

    bash_completion.mkpath
    bash_completion.install "sourcehawk-bash-completion.sh"

    man1.mkpath
    man1.install "sourcehawk.1"
    man1.install "sourcehawk-fix.1"
    man1.install "sourcehawk-flatten-config.1"
    man1.install "sourcehawk-scan.1"
    man1.install "sourcehawk-scan-bitbucket.1"
    man1.install "sourcehawk-scan-github.1"
    man1.install "sourcehawk-validate-config.1"

  end

  test do
    assert_equal "Sourcehawk v0.5.1", shell_output("#{share}/sourcehawk -V").chomp
  end

end
