class Csm < Formula
  desc "TUI session manager for Claude Code + Codex"
  homepage "https://github.com/welcomra1n/session-manager-tui"
  version "0.4.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/welcomra1n/session-manager-tui/releases/download/v0.4.0/csm-darwin-arm64"
      sha256 "d940527f8254cc63627810c6733ddad3bcca982d555663763dd3b27cf2abce38"
    else
      url "https://github.com/welcomra1n/session-manager-tui/releases/download/v0.4.0/csm-darwin-amd64"
      sha256 "0ccd6bda6ecb06c627bcaa891da29d7c78907f20ef9343543068757f9d4b7653"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/welcomra1n/session-manager-tui/releases/download/v0.4.0/csm-linux-arm64"
      sha256 "5f404e189b18bd341d1d0ae9168943faa9a47137db51895f605b49aa00a02bf2"
    else
      url "https://github.com/welcomra1n/session-manager-tui/releases/download/v0.4.0/csm-linux-amd64"
      sha256 "92e11d49029cbfbe1bb1d8f90ca9eb1ce0410f23bfb8a96b1a8003366f96d196"
    end
  end

  def install
    bin.install Dir.glob("csm-*").first => "csm"
  end

  test do
    assert_match "csm", shell_output("#{bin}/csm --help 2>&1", 1)
  end
end
