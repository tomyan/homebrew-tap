class Hubcap < Formula
  desc "CLI for Chrome DevTools Protocol"
  homepage "https://github.com/tomyan/hubcap"
  version "1.6.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tomyan/hubcap/releases/download/v1.6.0/hubcap-v1.6.0-darwin-arm64.tar.gz"
      sha256 "e7f22adf7704510a0156f6ac078370cf3ca240a5b2b4620a2c09bdabf0f9fa58"
    else
      url "https://github.com/tomyan/hubcap/releases/download/v1.6.0/hubcap-v1.6.0-darwin-amd64.tar.gz"
      sha256 "e4e3f8ef738f1302a4c0da935773ad761e7bd84fc70cd00b9270ba31562dabb6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/tomyan/hubcap/releases/download/v1.6.0/hubcap-v1.6.0-linux-arm64.tar.gz"
      sha256 "0655d0b879f402d006289e34ec8963cc29ca78c5bd96ea7a056c3a4d3c35a4e5"
    else
      url "https://github.com/tomyan/hubcap/releases/download/v1.6.0/hubcap-v1.6.0-linux-amd64.tar.gz"
      sha256 "ad8daef17b733956b8786cf2aeaf95d8e6e5874517d9c05e9c0d5f750f6faeea"
    end
  end

  def install
    bin.install "hubcap"
  end

  test do
    assert_match "unknown command", shell_output("#{bin}/hubcap notacommand 2>&1", 1)
  end
end
