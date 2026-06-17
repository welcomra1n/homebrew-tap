class Csm < Formula
  desc "TUI session manager for Claude Code + Codex"
  homepage "https://github.com/welcomra1n/session-manager-tui"
  version "0.3.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/welcomra1n/session-manager-tui/releases/download/v0.3.3/csm-darwin-arm64"
      sha256 "0ce7a954ead1c04b56be0ac1432ec3dd488ed08b0b4ce958c01acb48b52cd63f"
    else
      url "https://github.com/welcomra1n/session-manager-tui/releases/download/v0.3.3/csm-darwin-amd64"
      sha256 "b3f4870f51e98a1aea220e8c7bd5a64a1ba8110b7df0964c35b838ad3991dd19"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/welcomra1n/session-manager-tui/releases/download/v0.3.3/csm-linux-arm64"
      sha256 "66fdb0f75c0f6fe9c29ba6a9aa7012837ea603912e12540ee6f429cf31aa7be6"
    else
      url "https://github.com/welcomra1n/session-manager-tui/releases/download/v0.3.3/csm-linux-amd64"
      sha256 "6e3c655a29acbc85470f3b2ea2733b834e7760601b6476ca4ce8c7b1f84e0223"
    end
  end

  def install
    bin.install Dir.glob("csm-*").first => "csm"
  end

  test do
    assert_match "csm", shell_output("#{bin}/csm --help 2>&1", 1)
  end
end
