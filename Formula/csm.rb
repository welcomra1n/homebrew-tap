class Csm < Formula
  desc "TUI session manager for Claude Code + Codex"
  homepage "https://github.com/welcomra1n/session-manager-tui"
  version "0.2.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/welcomra1n/session-manager-tui/releases/download/v0.2.1/csm-darwin-arm64"
      sha256 "dd1d7b26bdc83bffd0c1f885d06ee93aad7c3a0a5921ab2b56b314148bac9043"
    else
      url "https://github.com/welcomra1n/session-manager-tui/releases/download/v0.2.1/csm-darwin-amd64"
      sha256 "9d919d3795f0b1af8f8d940c2c2a6010f8cc57149c26706d00840382bb8660da"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/welcomra1n/session-manager-tui/releases/download/v0.2.1/csm-linux-arm64"
      sha256 "80f93b78ce1fe1ee54b9134d5c52daa40cd357f183f3be2e063a56753b339168"
    else
      url "https://github.com/welcomra1n/session-manager-tui/releases/download/v0.2.1/csm-linux-amd64"
      sha256 "c7d3655b5a5ae36cab945e81bf1555c675de0baeb775235d443ed7164a0975c2"
    end
  end

  def install
    bin.install Dir.glob("csm-*").first => "csm"
  end

  test do
    assert_match "csm", shell_output("#{bin}/csm --help 2>&1", 1)
  end
end
