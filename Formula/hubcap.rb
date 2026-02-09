class Hubcap < Formula
  desc "CLI for Chrome DevTools Protocol"
  homepage "https://github.com/tomyan/hubcap"
  version "1.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tomyan/hubcap/releases/download/v1.1.0/hubcap-v1.1.0-darwin-arm64.tar.gz"
      sha256 "abb89d59606ad3535670e8b2f8dfe38c325cbe56282370d8ff389271915b93e1"
    else
      url "https://github.com/tomyan/hubcap/releases/download/v1.1.0/hubcap-v1.1.0-darwin-amd64.tar.gz"
      sha256 "0e3da1d825708cb2af30e1fed9d20198eeff1a3753ce5051f3ca1d9e8efa1ef7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/tomyan/hubcap/releases/download/v1.1.0/hubcap-v1.1.0-linux-arm64.tar.gz"
      sha256 "ac835fe97a9990fc2da4d1ce70ff3f0acb03a34e7839cdcae66ac462024578df"
    else
      url "https://github.com/tomyan/hubcap/releases/download/v1.1.0/hubcap-v1.1.0-linux-amd64.tar.gz"
      sha256 "73203097060dc316cabe55081e95192101bb308878fce8bcd28632568936e459"
    end
  end

  def install
    bin.install "hubcap"
  end

  test do
    assert_match "unknown command", shell_output("#{bin}/hubcap notacommand 2>&1", 1)
  end
end
