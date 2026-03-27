class Hubcap < Formula
  desc "CLI for Chrome DevTools Protocol"
  homepage "https://github.com/tomyan/hubcap"
  version "1.7.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tomyan/hubcap/releases/download/v1.7.0/hubcap-v1.7.0-darwin-arm64.tar.gz"
      sha256 "4149476a9938e46a76b9353c85dae39ec7570f5214c032c080c8edc01fc9f3ca"
    else
      url "https://github.com/tomyan/hubcap/releases/download/v1.7.0/hubcap-v1.7.0-darwin-amd64.tar.gz"
      sha256 "571fa804423b1351bae8f6935fee690004de2089b8def147ca8812cf91a2f919"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/tomyan/hubcap/releases/download/v1.7.0/hubcap-v1.7.0-linux-arm64.tar.gz"
      sha256 "cf4878fbe464d9cc72bf10171011924062f0675e3b0233c9fa0c55c5403194ce"
    else
      url "https://github.com/tomyan/hubcap/releases/download/v1.7.0/hubcap-v1.7.0-linux-amd64.tar.gz"
      sha256 "9791f0161be60d658f5f4340400257a11f07c04edc3bfd97fb2be1908177c6ee"
    end
  end

  def install
    bin.install "hubcap"
  end

  test do
    assert_match "unknown command", shell_output("#{bin}/hubcap notacommand 2>&1", 1)
  end
end
