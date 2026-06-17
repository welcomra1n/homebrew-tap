class Csm < Formula
  desc "TUI session manager for Claude Code + Codex"
  homepage "https://github.com/welcomra1n/session-manager-tui"
  version "0.3.9"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/welcomra1n/session-manager-tui/releases/download/v0.3.9/csm-darwin-arm64"
      sha256 "2ea3cb3273ed47b520c3e467d82a10a364c8ded9a4d636232f5dcc1d81aee58c"
    else
      url "https://github.com/welcomra1n/session-manager-tui/releases/download/v0.3.9/csm-darwin-amd64"
      sha256 "96e65783f89f59564794185b7aca6f3dce73013ae3d77b68a14344c907597984"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/welcomra1n/session-manager-tui/releases/download/v0.3.9/csm-linux-arm64"
      sha256 "7f3737e944ef9546bc85428a31d3189d608ad6727955c92ae3b7ddd668f724e0"
    else
      url "https://github.com/welcomra1n/session-manager-tui/releases/download/v0.3.9/csm-linux-amd64"
      sha256 "89c51c451c3bdce9880bf916ea7ebae3399b42eced4b5e95962dbea25cfb6d8b"
    end
  end

  def install
    bin.install Dir.glob("csm-*").first => "csm"
  end

  test do
    assert_match "csm", shell_output("#{bin}/csm --help 2>&1", 1)
  end
end
