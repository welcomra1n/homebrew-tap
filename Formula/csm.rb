class Csm < Formula
  desc "TUI session manager for Claude Code + Codex"
  homepage "https://github.com/welcomra1n/session-manager-tui"
  version "0.4.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/welcomra1n/session-manager-tui/releases/download/v0.4.3/csm-darwin-arm64"
      sha256 "824a82f5313178cf011f5c9f9996dab175cf20c3ae658b4d752723eb6cd9ce71"
    else
      url "https://github.com/welcomra1n/session-manager-tui/releases/download/v0.4.3/csm-darwin-amd64"
      sha256 "606a887308ee81eb9d768ddd405e8c2be4ab233685288702af04e8b09ef145e1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/welcomra1n/session-manager-tui/releases/download/v0.4.3/csm-linux-arm64"
      sha256 "5dfb590532cdd4d2013eb39f65a6b3c0230880812ee2b58a88500e9a554052dd"
    else
      url "https://github.com/welcomra1n/session-manager-tui/releases/download/v0.4.3/csm-linux-amd64"
      sha256 "bb6d19f27a8026c0b6e80e77aa541919a7babb93e4e4ac21ad40a3a5f2cfdee0"
    end
  end

  def install
    bin.install Dir.glob("csm-*").first => "csm"
  end

  test do
    assert_match "csm", shell_output("#{bin}/csm --help 2>&1", 1)
  end
end
