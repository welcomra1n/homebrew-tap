class Csm < Formula
  desc "TUI session manager for Claude Code + Codex"
  homepage "https://github.com/welcomra1n/session-manager-tui"
  version "0.3.10"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/welcomra1n/session-manager-tui/releases/download/v0.3.10/csm-darwin-arm64"
      sha256 "c9a1fa61890ee3e32ed03d94d17af3b8fcb0bb5374b21a51c7a0997480cacf3a"
    else
      url "https://github.com/welcomra1n/session-manager-tui/releases/download/v0.3.10/csm-darwin-amd64"
      sha256 "7a86a381c0a0c39635b757b3e3800c4a4d1dd96711dbe6cdf976c76926163d7c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/welcomra1n/session-manager-tui/releases/download/v0.3.10/csm-linux-arm64"
      sha256 "03052f2f1f84909235e88a1b8e7a7ae592abb5411a7b9f33f96e06c5c681d0d4"
    else
      url "https://github.com/welcomra1n/session-manager-tui/releases/download/v0.3.10/csm-linux-amd64"
      sha256 "b60780d6776e1cdaf8c5a28a53368363dd398093d3fc1037e7a6fe20a132773e"
    end
  end

  def install
    bin.install Dir.glob("csm-*").first => "csm"
  end

  test do
    assert_match "csm", shell_output("#{bin}/csm --help 2>&1", 1)
  end
end
