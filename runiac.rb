# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Runiac < Formula
  desc "Run IaC Anywhere with Ease"
  homepage "https://github.com/optum/runiac"
  version "0.0.1-beta1"
  license "Apache2"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/Optum/runiac/releases/download/v0.0.1-beta1/runiac_0.0.1-beta1_Darwin_x86_64.tar.gz"
    sha256 "13805c539be9ba5ef1b115b67c5b0576659eb187a90e6c76861e332c20271a32"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/Optum/runiac/releases/download/v0.0.1-beta1/runiac_0.0.1-beta1_Linux_x86_64.tar.gz"
    sha256 "fbb1326d9ca20543c2e62ae9f9511a7e094aec2b0922cef69fc2ff14a6fac0d9"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/Optum/runiac/releases/download/v0.0.1-beta1/runiac_0.0.1-beta1_Linux_arm64.tar.gz"
    sha256 "d7d379431143876abd33fd831d0d83240e5c06c2efe3838078b78ede15e41ee6"
  end

  def install
    bin.install "runiac"
  end

  test do
    system "#{bin}/runiac version"
  end
end
