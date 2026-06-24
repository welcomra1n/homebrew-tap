class Csm < Formula
  desc "TUI session manager for Claude Code + Codex"
  homepage "https://github.com/welcomra1n/session-manager-tui"
  version "0.4.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/welcomra1n/session-manager-tui/releases/download/v0.4.1/csm-darwin-arm64"
      sha256 "219eede129f41633de9dafc201f8da001d7c1a48ad674e5911aaf236f700e69d"
    else
      url "https://github.com/welcomra1n/session-manager-tui/releases/download/v0.4.1/csm-darwin-amd64"
      sha256 "0776f43fe35f0864af5d30117dca0d8555a1cdae876396322306a7a5bd8ac457"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/welcomra1n/session-manager-tui/releases/download/v0.4.1/csm-linux-arm64"
      sha256 "a350aa72d7d774bb30c8a9db82d6a2bddb2cc996df4f29bbebb591a7f5af5098"
    else
      url "https://github.com/welcomra1n/session-manager-tui/releases/download/v0.4.1/csm-linux-amd64"
      sha256 "22f19b5ad25d93af3114367a9377e3fe1d4b90372b4e3954299a3bb448eb0a37"
    end
  end

  def install
    bin.install Dir.glob("csm-*").first => "csm"
  end

  test do
    assert_match "csm", shell_output("#{bin}/csm --help 2>&1", 1)
  end
end
