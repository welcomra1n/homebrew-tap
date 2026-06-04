class Csm < Formula
  desc "TUI session manager for Claude Code + Codex"
  homepage "https://github.com/welcomra1n/session-manager-tui"
  version "0.2.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/welcomra1n/session-manager-tui/releases/download/v0.2.4/csm-darwin-arm64"
      sha256 "b82e8d04186bbc4d5287a6bf9df009a0151a5da9a72ca52d5cf21944686e0c5d"
    else
      url "https://github.com/welcomra1n/session-manager-tui/releases/download/v0.2.4/csm-darwin-amd64"
      sha256 "35916746433d942c7e59c3cec76e8cb93ff6d302d3ad2e745d4a98d14ce61ac7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/welcomra1n/session-manager-tui/releases/download/v0.2.4/csm-linux-arm64"
      sha256 "452c135461a78df8d494373b197ba2fb643b80a2be2e70df342f69c813181c46"
    else
      url "https://github.com/welcomra1n/session-manager-tui/releases/download/v0.2.4/csm-linux-amd64"
      sha256 "5973c5b47647df491ced1905680797816bdba6548993fbedb2542ed18b4d2e30"
    end
  end

  def install
    bin.install Dir.glob("csm-*").first => "csm"
  end

  test do
    assert_match "csm", shell_output("#{bin}/csm --help 2>&1", 1)
  end
end
