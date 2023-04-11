# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Semver < Formula
  desc "A cli for common semantic versioning operations"
  homepage "https://github.com/Optum/semver-cli"
  version "0.1.5"
  license "Apache2"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/Optum/semver-cli/releases/download/0.2.1/semver.x86_64-apple-darwin.tar.gz"
      sha256 "a78d4a65a25f98290baef5a9f8945eb6314b1ceaa01ccd1b6b574dfef7c28b3c"

      def install
        bin.install "semver"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/Optum/semver-cli/releases/download/0.2.1/semver.aarch64-apple-darwin.tar.gz"
      sha256 "c2382be95260e1efe61a29bb19593c05ffa422ba8e9be5aa87432aca8da2f90f"

      def install
        bin.install "semver"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/Optum/semver-cli/releases/download/0.2.1/semver.x86_64-unknown-linux-gnu.tar.gz"
      sha256 "101ed7d5f7afd4c4a070399aea9e8260dc2546006d1af37701acfca7e6f69b64"

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
