class Hubcap < Formula
  desc "CLI for Chrome DevTools Protocol"
  homepage "https://github.com/tomyan/hubcap"
  version "1.3.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tomyan/hubcap/releases/download/v1.3.1/hubcap-v1.3.1-darwin-arm64.tar.gz"
      sha256 "59dcc441f3b478552e6b832bb994d52eba35f18514dd79b9b0485d7701d097e8"
    else
      url "https://github.com/tomyan/hubcap/releases/download/v1.3.1/hubcap-v1.3.1-darwin-amd64.tar.gz"
      sha256 "a7efa4731cbc2a51112f2befd6380578928393a12f2679b40cf6f73321f99c62"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/tomyan/hubcap/releases/download/v1.3.1/hubcap-v1.3.1-linux-arm64.tar.gz"
      sha256 "bfd5bcceacfd72e80e1b3d1fa470f7b69f818b729acaf514e5af598046d7f98a"
    else
      url "https://github.com/tomyan/hubcap/releases/download/v1.3.1/hubcap-v1.3.1-linux-amd64.tar.gz"
      sha256 "3b16bf76365f95da2f8167e7fa9b0f03594ae397569bdec80baab829183348c7"
    end
  end

  def install
    bin.install "hubcap"
  end

  test do
    assert_match "unknown command", shell_output("#{bin}/hubcap notacommand 2>&1", 1)
  end
end
