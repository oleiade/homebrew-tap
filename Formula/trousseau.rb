# This file was generated by GoReleaser. DO NOT EDIT.
class Trousseau < Formula
  desc "File based encrypted key-value store"
  homepage "https://github.com/oleiade/trousseau"
  version "0.4.1"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/oleiade/trousseau/releases/download/v0.4.1/trousseau_0.4.1_Darwin_x86_64.tar.gz"
    sha256 "b514564fd226853961df63e9191d1f07b7b283c8d2956513732fcd4363b46f0f"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/oleiade/trousseau/releases/download/v0.4.1/trousseau_0.4.1_Linux_x86_64.tar.gz"
      sha256 "473473de6d5e70c12160f7080a3a1632e7684a3760309de164f9fb03f7a6fe7b"
    end
  end

  def install
    bin.install "trousseau"
  end

  test do
    system "#{bin}/trousseau -v"
  end
end
