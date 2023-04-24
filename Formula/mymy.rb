class Mymy < Formula
  desc "Get essential information about your device"
  homepage "https://github.com/oleiade/mymy"
  version "v0.3.0"
  license "AGPL-3.0 license"

  if Hardware::CPU.arm?
    url "https://github.com/oleiade/mymy/releases/download/v0.3.0/my-aarch64-apple-darwin.tar.gz"
    sha256 "21aab04870d855bf6ed8adfa111f28a061f157270ac6a536452ad96db33b7364"
  else
    url "https://github.com/oleiade/mymy/releases/download/v0.3.0/my-x86_64-apple-darwin.tar.gz"
    sha256 "b079058652e62d2867387f8c8f66f938b29b7fe571607e4b08dd1210429a396d"
  end

  def install
    bin.install "my"
  end

  test do
    system "#{bin}/my", "--help"
  end
end
