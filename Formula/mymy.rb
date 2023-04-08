class MyApp < Formula
  desc "Get essential information about your device"
  homepage "https://github.com/oleiade/mymy"
  version "v0.2.0"
  license "AGPL-3.0 license"

  if Hardware::CPU.arm?
    url "https://github.com/oleiade/mymy/releases/download/v0.2.0/my-aarch64-apple-darwin.tar.gz"
    sha256 "734f9572c4da9f92602fba291a23ace74949368ca3ec44737b810042aaa78b65"
  else
    url "https://github.com/oleiade/mymy/releases/download/v0.2.0/my-x86_64-apple-darwin.tar.gz"
    sha256 "82f9b1b9ddabd7b880d1704e34fed55571e9ebd7936898ff6def73b8c51ae0c1"
  end

  def install
    bin.install "my"
  end

  test do
    system "#{bin}/my", "--help"
  end
end
