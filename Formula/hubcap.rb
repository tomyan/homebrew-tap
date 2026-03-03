class Hubcap < Formula
  desc "CLI for Chrome DevTools Protocol"
  homepage "https://github.com/tomyan/hubcap"
  version "1.4.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tomyan/hubcap/releases/download/v1.4.0/hubcap-v1.4.0-darwin-arm64.tar.gz"
      sha256 "650e244996e40a5140b8d42c59baec97421d31d8f0ae6cf820bb14cdea9231e2"
    else
      url "https://github.com/tomyan/hubcap/releases/download/v1.4.0/hubcap-v1.4.0-darwin-amd64.tar.gz"
      sha256 "636695d80bcbe7ab9a86547643b33a82a4ce42c27fcbf033300f6842da2128d3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/tomyan/hubcap/releases/download/v1.4.0/hubcap-v1.4.0-linux-arm64.tar.gz"
      sha256 "69e0be0e9598a098c2a35f6a460f951398b26b094093257bf4b8d676807b4c9a"
    else
      url "https://github.com/tomyan/hubcap/releases/download/v1.4.0/hubcap-v1.4.0-linux-amd64.tar.gz"
      sha256 "904433536437ae5603de97fe2b593a2152a5582b7fc4227e1b0b051c4516a5c0"
    end
  end

  def install
    bin.install "hubcap"
  end

  test do
    assert_match "unknown command", shell_output("#{bin}/hubcap notacommand 2>&1", 1)
  end
end
