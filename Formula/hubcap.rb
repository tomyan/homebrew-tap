class Hubcap < Formula
  desc "CLI for Chrome DevTools Protocol"
  homepage "https://github.com/tomyan/hubcap"
  version "1.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tomyan/hubcap/releases/download/v1.2.0/hubcap-v1.2.0-darwin-arm64.tar.gz"
      sha256 "c2a952f9773c31d7166ddde09a281846b07b232f07386cf0e403cd3f8fae19ba"
    else
      url "https://github.com/tomyan/hubcap/releases/download/v1.2.0/hubcap-v1.2.0-darwin-amd64.tar.gz"
      sha256 "082293aad08adb3de48d0ccbaf760fe1aaa0ba8eac2367563e7f5798ff369247"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/tomyan/hubcap/releases/download/v1.2.0/hubcap-v1.2.0-linux-arm64.tar.gz"
      sha256 "6f645157befa4bb6cf546685c24d48c4d2702e71d3b9157bf2180cd43a39cf97"
    else
      url "https://github.com/tomyan/hubcap/releases/download/v1.2.0/hubcap-v1.2.0-linux-amd64.tar.gz"
      sha256 "f19b02548df76afe7c35f599f8edc17b3d5ba6499253688f26c9a232a5d451fc"
    end
  end

  def install
    bin.install "hubcap"
  end

  test do
    assert_match "unknown command", shell_output("#{bin}/hubcap notacommand 2>&1", 1)
  end
end
