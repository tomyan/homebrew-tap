class Sumi < Formula
  desc "Declarative TTY framework for Go - terminal UIs with HTML and CSS"
  homepage "https://gosumi.dev"
  url "https://github.com/tomyan/sumi/archive/refs/tags/v0.5.0.tar.gz"
  sha256 "a086dcd461db63240e7d5cf14170c10319ffc20009adc229e5d8bd659219323c"
  license "MIT"
  head "https://github.com/tomyan/sumi.git", branch: "main"

  depends_on "go" => :build

  def install
    # Scaffolded apps depend on the framework source through a replace
    # directive (sumi init resolves it via SUMI_PATH), so the full
    # source tree lives in libexec, not just the binary.
    libexec.install Dir["*"], ".gitignore"
    cd libexec do
      system "go", "build", "-trimpath", "-o", libexec/"bin/sumi", "./cmd/sumi"
    end
    (bin/"sumi").write_env_script libexec/"bin/sumi", SUMI_PATH: libexec
  end

  test do
    system bin/"sumi", "init", "testapp"
    assert_path_exists testpath/"testapp/app.sumi"
    assert_match libexec.to_s, (testpath/"testapp/go.mod").read
  end
end
