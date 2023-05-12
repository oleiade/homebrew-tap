class Motus < Formula
    desc "Dead simple password generator"
    homepage "https://github.com/oleiade/motus"
    version "v0.2.0"
    license "AGPL-3.0 license"

    if Hardware::CPU.arm?
      url "https://github.com/oleiade/motus/releases/download/v0.2.0/motus-aarch64-apple-darwin.tar.gz"
      sha256 "a24a4a2db5da3f4dfef9b94bb02d778308bb8ddd073544ed51de954a8bfa7590"
    else
      url "https://github.com/oleiade/motus/releases/download/v0.2.0/motus-x86_64-apple-darwin.tar.gz"
      sha256 "5c7eaee9f7de14448aa468a69bbe4d5dd6bed3a0b12fb52fdce424829d082316"
    end

    def install
      bin.install "motus"
    end

    test do
      system "#{bin}/motus", "--help"
    end
  end
