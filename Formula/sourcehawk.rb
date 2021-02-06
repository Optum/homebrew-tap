class Sourcehawk < Formula

  desc "Sourcehawk is an extensible compliance as code tool which allows development teams to run compliance scans on their source code."
  homepage "https://optum.github.io/sourcehawk"
  url "https://github.com/Optum/sourcehawk/releases/download/v0.5.1/sourcehawk-0.5.1-darwin-x86_64.tar.gz"
  sha256 "f37bea28df3b110f4437d50d8bbf2380b483661f65b9008d7734a7c731d30471"
  license "GPL-3.0"

  def install
    system "./configure", "--disable-debug",
                          "--disable-dependency-tracking",
                          "--disable-silent-rules",
                          "--prefix=#{prefix}"
    system "make", "install"
  end

  test do
    assert_equal "Sourcehawk v0.5.1", shell_output("#{bin}/sourcehawk -V").chomp
  end

end
