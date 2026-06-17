class Csm < Formula
  desc "TUI session manager for Claude Code + Codex"
  homepage "https://github.com/welcomra1n/session-manager-tui"
  version "0.3.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/welcomra1n/session-manager-tui/releases/download/v0.3.4/csm-darwin-arm64"
      sha256 "1be71ad2e59cbad47aad3624c99723c766659c53feaed0d10001afd127cef70e"
    else
      url "https://github.com/welcomra1n/session-manager-tui/releases/download/v0.3.4/csm-darwin-amd64"
      sha256 "6ef5dcd07d8632658d7fb87b56ce826e18125159a2441eadc24b77e3a8ffdeb8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/welcomra1n/session-manager-tui/releases/download/v0.3.4/csm-linux-arm64"
      sha256 "5566dfd156f57277c4ddff99720a89b8365072c3f9fba4f25dec8ee4a849975f"
    else
      url "https://github.com/welcomra1n/session-manager-tui/releases/download/v0.3.4/csm-linux-amd64"
      sha256 "5d174f8004969f27831284df6b6b73bb55a281345f6131370408b18ec426d2b5"
    end
  end

  def install
    bin.install Dir.glob("csm-*").first => "csm"
  end

  test do
    assert_match "csm", shell_output("#{bin}/csm --help 2>&1", 1)
  end
end
