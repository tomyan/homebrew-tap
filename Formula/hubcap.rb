class Hubcap < Formula
  desc "CLI for Chrome DevTools Protocol"
  homepage "https://github.com/tomyan/hubcap"
  version "1.8.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tomyan/hubcap/releases/download/v1.8.1/hubcap-v1.8.1-darwin-arm64.tar.gz"
      sha256 "bc2cff59c0d70851ec4fd4d2ad1e0c75e71b45e1992ac662fec915c4f1f244b8"
    else
      url "https://github.com/tomyan/hubcap/releases/download/v1.8.1/hubcap-v1.8.1-darwin-amd64.tar.gz"
      sha256 "8e2c26290b47dac17a5b13d75967ff12dc671e171079e9017bf0d3414c88a72d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/tomyan/hubcap/releases/download/v1.8.1/hubcap-v1.8.1-linux-arm64.tar.gz"
      sha256 "d7fb47dec2358a405d2e268dac7167c346068a50f0f0e47864d6542e53d635c4"
    else
      url "https://github.com/tomyan/hubcap/releases/download/v1.8.1/hubcap-v1.8.1-linux-amd64.tar.gz"
      sha256 "47468ed5612c2e93db67d0bb88ebf76dd0bd2925107f089bf0d3da2cd26dd9ee"
    end
  end

  def install
    bin.install "hubcap"
  end

  test do
    assert_match "unknown command", shell_output("#{bin}/hubcap notacommand 2>&1", 1)
  end
end
