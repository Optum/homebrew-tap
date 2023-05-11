# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Semver < Formula
  desc "A cli for common semantic versioning operations"
  homepage "https://github.com/Optum/semver-cli"
  version "0.3.0"
  license "Apache2"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/Optum/semver-cli/releases/download/0.3.0/semver.x86_64-apple-darwin.tar.gz"
      sha256 "63c6961257732cbc20ca63ec52ead1d087fbfbf54f6eb8b5529644a4206b46fd"

      def install
        bin.install "semver"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/Optum/semver-cli/releases/download/0.3.0/semver.aarch64-apple-darwin.tar.gz"
      sha256 "5f7e553e70eaa46d1a298065386c3970cd3db458f4e355b42f83151ba31c791d"

      def install
        bin.install "semver"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/Optum/semver-cli/releases/download/0.3.0/semver.x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e58f58fc6d21f65e842215cf4f2d22e13d6d02f4fa3310481ef88fb028b9663c"

      def install
        bin.install "semver"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      raise "Not yet supported"
    end
  end

  test do
    system "#{bin}/semver --version"
  end
end
