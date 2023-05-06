class Motus < Formula
    desc "Dead simple password generator"
    homepage "https://github.com/oleiade/motus"
    version "v0.1.0"
    license "AGPL-3.0 license"

    if Hardware::CPU.arm?
      url "https://github.com/oleiade/motus/releases/download/v0.1.0/motus-aarch64-apple-darwin.tar.gz"
      sha256 "d0558847c4e4e14e8ecc4b788e4241eeebc317c20b08b924d3032c1ccaa2267c"
    else
      url "https://github.com/oleiade/motus/releases/download/v0.1.0/motus-x86_64-apple-darwin.tar.gz"
      sha256 "9aaff99a7c310ccb15b835244d06cb532efbb6bdc071e1b606437c2c0258337c"
    end

    def install
      bin.install "motus"
    end

    test do
      system "#{bin}/motus", "--help"
    end
  end
