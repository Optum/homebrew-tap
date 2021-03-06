# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Runiac < Formula
  desc "Run IaC Anywhere with Ease"
  homepage "https://runiac.io"
  version "0.0.8"
  license "Apache2"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/Optum/runiac/releases/download/v0.0.8/runiac_0.0.8_darwin_x86_64.tar.gz"
      sha256 "fa69f522b55802d6ffa5cc28276e034467d44845780f31165d4a1624b307e8a7"
    end
    if Hardware::CPU.arm?
      url "https://github.com/Optum/runiac/releases/download/v0.0.8/runiac_0.0.8_darwin_arm64.tar.gz"
      sha256 "27026fc77bdece604495724a03e1f0a461f0f6eff3c5321423e21bc9d8622f24"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/Optum/runiac/releases/download/v0.0.8/runiac_0.0.8_linux_x86_64.tar.gz"
      sha256 "f7951e8e2eb2ef375c4684840f8261d7642d5b29afb44dbe61e30d67927a32e7"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/Optum/runiac/releases/download/v0.0.8/runiac_0.0.8_linux_arm64.tar.gz"
      sha256 "df37dbba2703006654d3addeea69302540a19bd30dbb15c3276934a49deae6a4"
    end
  end

  def install
    bin.install "runiac"
  end

  test do
    system "#{bin}/runiac version"
  end
end
