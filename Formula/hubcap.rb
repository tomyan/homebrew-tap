class Hubcap < Formula
  desc "CLI for Chrome DevTools Protocol"
  homepage "https://github.com/tomyan/hubcap"
  version "1.3.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tomyan/hubcap/releases/download/v1.3.0/hubcap-v1.3.0-darwin-arm64.tar.gz"
      sha256 "e7c9e57e15cb84f3dcf27d156793782509228bda15ca154aa3c249e84ad6dcce"
    else
      url "https://github.com/tomyan/hubcap/releases/download/v1.3.0/hubcap-v1.3.0-darwin-amd64.tar.gz"
      sha256 "02a45aedc9b19f8fd908dedc82f688824b19b2eb516000e769a6e186347e52df"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/tomyan/hubcap/releases/download/v1.3.0/hubcap-v1.3.0-linux-arm64.tar.gz"
      sha256 "eab8442d1063d18c8a2f2ccbf6c57e1b97ac57d41ac1f5b9e94bd2dc861ee06c"
    else
      url "https://github.com/tomyan/hubcap/releases/download/v1.3.0/hubcap-v1.3.0-linux-amd64.tar.gz"
      sha256 "ea4e6e9fd9878b74a98b102290ee38db09602d1c30edcc48311a3b154ad16d5a"
    end
  end

  def install
    bin.install "hubcap"
  end

  test do
    assert_match "unknown command", shell_output("#{bin}/hubcap notacommand 2>&1", 1)
  end
end
