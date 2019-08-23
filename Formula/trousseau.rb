# This file was generated by GoReleaser. DO NOT EDIT.
class Trousseau < Formula
  desc "File based encrypted key-value store"
  homepage "https://github.com/oleiade/trousseau"
  version "0.4.1"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/oleiade/trousseau/releases/download/v0.4.1/trousseau_0.4.1_Darwin_x86_64.tar.gz"
    sha256 "b46e2d392ec89bf88eacae11e1449fa4a2f3775ad755066e037cb79ac462f523"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/oleiade/trousseau/releases/download/v0.4.1/trousseau_0.4.1_Linux_x86_64.tar.gz"
      sha256 "c81aba40c526c464e55d84cad50212f66c7e9c5781c0aa3c97b55dee301081c0"
    end
  end

  def install
    bin.install "trousseau"
  end

  test do
    system "#{bin}/trousseau -v"
  end
end
