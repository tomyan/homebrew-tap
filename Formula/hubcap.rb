class Hubcap < Formula
  desc "CLI for Chrome DevTools Protocol"
  homepage "https://github.com/tomyan/hubcap"
  version "1.8.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tomyan/hubcap/releases/download/v1.8.0/hubcap-v1.8.0-darwin-arm64.tar.gz"
      sha256 "c571711219a7c991fc8b221dc1dd51b9798752ed5764c4bcb2cb41a5c12c8b31"
    else
      url "https://github.com/tomyan/hubcap/releases/download/v1.8.0/hubcap-v1.8.0-darwin-amd64.tar.gz"
      sha256 "20cd57ca57abe71ff3871e1ded3b33808106c06a535dba63bc69d73abe56a6af"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/tomyan/hubcap/releases/download/v1.8.0/hubcap-v1.8.0-linux-arm64.tar.gz"
      sha256 "ef38d472e84e7728570b076d5b6a30e3008335f4eadb8c598bfcae1be13156d9"
    else
      url "https://github.com/tomyan/hubcap/releases/download/v1.8.0/hubcap-v1.8.0-linux-amd64.tar.gz"
      sha256 "50a19538ea9951af652e490223aa764a9e1d92eabbc6b2f41fb9eb4fbe68b7d3"
    end
  end

  def install
    bin.install "hubcap"
  end

  test do
    assert_match "unknown command", shell_output("#{bin}/hubcap notacommand 2>&1", 1)
  end
end
