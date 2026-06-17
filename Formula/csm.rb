class Csm < Formula
  desc "TUI session manager for Claude Code + Codex"
  homepage "https://github.com/welcomra1n/session-manager-tui"
  version "0.3.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/welcomra1n/session-manager-tui/releases/download/v0.3.5/csm-darwin-arm64"
      sha256 "96b1dbb378c08bb596a897a0a60c1c9467252cdd0d32cd3f09b919ef50792d29"
    else
      url "https://github.com/welcomra1n/session-manager-tui/releases/download/v0.3.5/csm-darwin-amd64"
      sha256 "4f6904715327348619e799976d8528a565ce41777dd186fb4a3b82bbff1c9441"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/welcomra1n/session-manager-tui/releases/download/v0.3.5/csm-linux-arm64"
      sha256 "5ffe9ab54ed748330cdec0026100d4593b0103b5216e94c058d7ce45cb297421"
    else
      url "https://github.com/welcomra1n/session-manager-tui/releases/download/v0.3.5/csm-linux-amd64"
      sha256 "7d00debf05a395e02ecab40a375ceeff319a11c73a7ca3c338c92363c024bce8"
    end
  end

  def install
    bin.install Dir.glob("csm-*").first => "csm"
  end

  test do
    assert_match "csm", shell_output("#{bin}/csm --help 2>&1", 1)
  end
end
