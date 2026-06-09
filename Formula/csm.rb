class Csm < Formula
  desc "TUI session manager for Claude Code + Codex"
  homepage "https://github.com/welcomra1n/session-manager-tui"
  version "0.3.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/welcomra1n/session-manager-tui/releases/download/v0.3.0/csm-darwin-arm64"
      sha256 "5bfda244b6e8ac1d68e5d8de3f33e662258f908432f60b1e803d1e6846153ff6"
    else
      url "https://github.com/welcomra1n/session-manager-tui/releases/download/v0.3.0/csm-darwin-amd64"
      sha256 "fce61a42b706f7a4a7730b7cbeab3166adb8f11053bfe7536555a39c56ad8e73"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/welcomra1n/session-manager-tui/releases/download/v0.3.0/csm-linux-arm64"
      sha256 "7b6636533cedd01853349621c9b49876b8cc7aa7390b64814e0d7bd64e195cc9"
    else
      url "https://github.com/welcomra1n/session-manager-tui/releases/download/v0.3.0/csm-linux-amd64"
      sha256 "9fb0cd14415b1ab3e4c7ceeec2cdc3e555fbd0ec9df438459e958ebaffe6bbfe"
    end
  end

  def install
    bin.install Dir.glob("csm-*").first => "csm"
  end

  test do
    assert_match "csm", shell_output("#{bin}/csm --help 2>&1", 1)
  end
end
