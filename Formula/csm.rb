class Csm < Formula
  desc "TUI session manager for Claude Code + Codex"
  homepage "https://github.com/welcomra1n/session-manager-tui"
  version "0.3.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/welcomra1n/session-manager-tui/releases/download/v0.3.3/csm-darwin-arm64"
      sha256 "fa4dbb30e08fad258a1a96f70eea771121e2bcc389130251e4c15e4790d95532"
    else
      url "https://github.com/welcomra1n/session-manager-tui/releases/download/v0.3.3/csm-darwin-amd64"
      sha256 "c72c53b309ebf3375eabd0fac069bafae5a2c2ec4b7fac43e844f9fa5b1e7688"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/welcomra1n/session-manager-tui/releases/download/v0.3.3/csm-linux-arm64"
      sha256 "c551bb9cc2c8194853a25f401ce1cee1e753f901bdc9c2fa71a85f39104df25d"
    else
      url "https://github.com/welcomra1n/session-manager-tui/releases/download/v0.3.3/csm-linux-amd64"
      sha256 "2dc10327eb94179f8f934892b19030410a1864b80f1c6faa28eb1c10bd2afbc1"
    end
  end

  def install
    bin.install Dir.glob("csm-*").first => "csm"
  end

  test do
    assert_match "csm", shell_output("#{bin}/csm --help 2>&1", 1)
  end
end
