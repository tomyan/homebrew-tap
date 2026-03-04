class Hubcap < Formula
  desc "CLI for Chrome DevTools Protocol"
  homepage "https://github.com/tomyan/hubcap"
  version "1.5.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tomyan/hubcap/releases/download/v1.5.0/hubcap-v1.5.0-darwin-arm64.tar.gz"
      sha256 "68d2c17a78c90c6087991e771f3022034aac4d5afcb37e947abb66e7982a3c47"
    else
      url "https://github.com/tomyan/hubcap/releases/download/v1.5.0/hubcap-v1.5.0-darwin-amd64.tar.gz"
      sha256 "759e996d68c9d1d98543aca5256a3669df83cd4f3ad6979be236dfde0d19e6a4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/tomyan/hubcap/releases/download/v1.5.0/hubcap-v1.5.0-linux-arm64.tar.gz"
      sha256 "618fceee4d9ce7a1fb789e3e8eba08c5275b57d1f7279c12932e69d99dda7ca7"
    else
      url "https://github.com/tomyan/hubcap/releases/download/v1.5.0/hubcap-v1.5.0-linux-amd64.tar.gz"
      sha256 "0426da1e158c30ca8831d021fb05bfa060a2146f6d11b79eb29d395ca62a3073"
    end
  end

  def install
    bin.install "hubcap"
  end

  test do
    assert_match "unknown command", shell_output("#{bin}/hubcap notacommand 2>&1", 1)
  end
end
