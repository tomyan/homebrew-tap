class Hubcap < Formula
  desc "CLI for Chrome DevTools Protocol"
  homepage "https://github.com/tomyan/hubcap"
  version "1.0.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tomyan/hubcap/releases/download/v1.0.0/hubcap-v1.0.0-darwin-arm64.tar.gz"
      sha256 "1096ff07832c3e4c0f52bcfa84310211b5f7d196aed22ad6590ccefc7fc7ad6b"
    else
      url "https://github.com/tomyan/hubcap/releases/download/v1.0.0/hubcap-v1.0.0-darwin-amd64.tar.gz"
      sha256 "65a3b058460586092a9fded15e20b66d9c0146840af04b9c3ba8be014d8a64b5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/tomyan/hubcap/releases/download/v1.0.0/hubcap-v1.0.0-linux-arm64.tar.gz"
      sha256 "c4023f415aee8e890f9dc0749f0899e8b28a8151a458fc644f68263c0185bd5d"
    else
      url "https://github.com/tomyan/hubcap/releases/download/v1.0.0/hubcap-v1.0.0-linux-amd64.tar.gz"
      sha256 "aa5063b625e11555f547b8c09d90a64372d3ffdccbf9855ffcbd9c73adadc96c"
    end
  end

  def install
    bin.install "hubcap"
  end

  test do
    assert_match "unknown command", shell_output("#{bin}/hubcap notacommand 2>&1", 1)
  end
end
