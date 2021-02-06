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
    sha256 "fee2a2a57bfd3ad05316307598cc1bd685a21c648cf7e2327f4dc803240fb765"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/Optum/runiac/releases/download/v0.0.1-beta1/runiac_0.0.1-beta1_Linux_x86_64.tar.gz"
    sha256 "11263ad0e94f89782c87a6847e152464c0090de5eeac9535a75c62e695a58292"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/Optum/runiac/releases/download/v0.0.1-beta1/runiac_0.0.1-beta1_Linux_arm64.tar.gz"
    sha256 "36772a50c9a920aa0a4bd11f48f173354b7d04a19ab18c2d060f961c7a12dc51"
  end

  def install
    bin.install "runiac"
  end

  test do
    system "#{bin}/runiac version"
  end
end
