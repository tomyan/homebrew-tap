class Hubcap < Formula
  desc "CLI for Chrome DevTools Protocol"
  homepage "https://github.com/tomyan/hubcap"
  version "1.5.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tomyan/hubcap/releases/download/v1.5.1/hubcap-v1.5.1-darwin-arm64.tar.gz"
      sha256 "c3b2b834a4655d0a4be3fbc20054b181222cc741cadea67d25e7ceec447c83e6"
    else
      url "https://github.com/tomyan/hubcap/releases/download/v1.5.1/hubcap-v1.5.1-darwin-amd64.tar.gz"
      sha256 "6054905279350a3604a12c58018490c00e244d0aff43421d88e50d027640153d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/tomyan/hubcap/releases/download/v1.5.1/hubcap-v1.5.1-linux-arm64.tar.gz"
      sha256 "b51086dfe833e33b4b136ca76969dd2b57da63763bbdb9c7d55eea020c357f90"
    else
      url "https://github.com/tomyan/hubcap/releases/download/v1.5.1/hubcap-v1.5.1-linux-amd64.tar.gz"
      sha256 "43a79015268233812464bd9a6fda4a44873898e9964021807c1de88553263f26"
    end
  end

  def install
    bin.install "hubcap"
  end

  test do
    assert_match "unknown command", shell_output("#{bin}/hubcap notacommand 2>&1", 1)
  end
end
