class Csm < Formula
  desc "TUI session manager for Claude Code + Codex"
  homepage "https://github.com/welcomra1n/session-manager-tui"
  version "0.3.11"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/welcomra1n/session-manager-tui/releases/download/v0.3.11/csm-darwin-arm64"
      sha256 "9bf626aea4c2aab4b23aecb3709b6e03fdb6e6a0aa4697481225ea0ca48898c2"
    else
      url "https://github.com/welcomra1n/session-manager-tui/releases/download/v0.3.11/csm-darwin-amd64"
      sha256 "aa0fef7a831f02f5658aebd242a0e0e9eab6fc55e94716e357d33b568e4c786b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/welcomra1n/session-manager-tui/releases/download/v0.3.11/csm-linux-arm64"
      sha256 "db7938743cfdd905b79a4dc95e5ff6c0ea52fb60c29ec103c14fc0685303f3bd"
    else
      url "https://github.com/welcomra1n/session-manager-tui/releases/download/v0.3.11/csm-linux-amd64"
      sha256 "9104ec19ce5f9233d793542e0b9b1f039b5c3d59c28c329c5cbaabe345794e83"
    end
  end

  def install
    bin.install Dir.glob("csm-*").first => "csm"
  end

  test do
    assert_match "csm", shell_output("#{bin}/csm --help 2>&1", 1)
  end
end
