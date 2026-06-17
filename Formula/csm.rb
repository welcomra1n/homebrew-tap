class Csm < Formula
  desc "TUI session manager for Claude Code + Codex"
  homepage "https://github.com/welcomra1n/session-manager-tui"
  version "0.3.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/welcomra1n/session-manager-tui/releases/download/v0.3.6/csm-darwin-arm64"
      sha256 "026e2628e7ef3b26208fbcbea4f108aafdcbd2d97f625b50955816bcf6d65cb9"
    else
      url "https://github.com/welcomra1n/session-manager-tui/releases/download/v0.3.6/csm-darwin-amd64"
      sha256 "59903b1160d9d3c866b96059b581ece79000b7ab8ad52f036269ccd6335f2699"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/welcomra1n/session-manager-tui/releases/download/v0.3.6/csm-linux-arm64"
      sha256 "26cd87835c884cc02e70b7d075030b98023f55b3c7087b2d67117c5f6e7d2f35"
    else
      url "https://github.com/welcomra1n/session-manager-tui/releases/download/v0.3.6/csm-linux-amd64"
      sha256 "1c8f3f374761800ab60fdcc1ef72ca945db6ddcd830ffc0e68621c83af5c8f9c"
    end
  end

  def install
    bin.install Dir.glob("csm-*").first => "csm"
  end

  test do
    assert_match "csm", shell_output("#{bin}/csm --help 2>&1", 1)
  end
end
