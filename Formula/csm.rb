class Csm < Formula
  desc "TUI session manager for Claude Code + Codex"
  homepage "https://github.com/welcomra1n/session-manager-tui"
  version "0.4.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/welcomra1n/session-manager-tui/releases/download/v0.4.2/csm-darwin-arm64"
      sha256 "86b288439d5c790218a48e55671181a4f4f7295312b13fc7036795420cb81f64"
    else
      url "https://github.com/welcomra1n/session-manager-tui/releases/download/v0.4.2/csm-darwin-amd64"
      sha256 "8ad51219056af59bd3114e6bd84dff9f48d63349f3be7ab5ee8e741f80e41242"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/welcomra1n/session-manager-tui/releases/download/v0.4.2/csm-linux-arm64"
      sha256 "610a084c7d5731015d460d82c22eaa4f81fa6a45c80340a36cdda4a88380a550"
    else
      url "https://github.com/welcomra1n/session-manager-tui/releases/download/v0.4.2/csm-linux-amd64"
      sha256 "c6590960cb2be1628ea56211e546e1666a991da380106e78c24b327cf5792abf"
    end
  end

  def install
    bin.install Dir.glob("csm-*").first => "csm"
  end

  test do
    assert_match "csm", shell_output("#{bin}/csm --help 2>&1", 1)
  end
end
