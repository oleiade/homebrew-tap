# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Motus < Formula
  desc "A simple and elegant password generator"
  homepage "https://github.com/oleiade/motus"
  version "0.4.0"
  license "MIT"

  depends_on "rust" => :build

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/oleiade/motus/releases/download/v0.4.0/motus_0.4.0_darwin_arm64.zip"
      sha256 "fac36d27b53f031ea976908d0bfb65e314138b65043eb4bdabfdcf7668c03ac2"

      def install
        bin.install "motus"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/oleiade/motus/releases/download/v0.4.0/motus_0.4.0_linux_amd64.tar.gz"
      sha256 "9c18be6b36f3a160329e6f6e0228f48fb4301c575dfee6ad26aacf99ea0c35dd"
      def install
        bin.install "motus"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/oleiade/motus/releases/download/v0.4.0/motus_0.4.0_linux_arm64.tar.gz"
      sha256 "e4da8e5f485dc46252339238b2c433b8363a371bda51c707df2b6891e7bfd508"
      def install
        bin.install "motus"
      end
    end
  end

  test do
    system "#{bin}/motus --version"
  end
end
