class Csm < Formula
  desc "TUI session manager for Claude Code + Codex"
  homepage "https://github.com/welcomra1n/session-manager-tui"
  version "0.2.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/welcomra1n/session-manager-tui/releases/download/v0.2.5/csm-darwin-arm64"
      sha256 "8d1c658893931195524e1ab1e847cd72a4341fafc7afc5d5a0f4b49b9892dd4d"
    else
      url "https://github.com/welcomra1n/session-manager-tui/releases/download/v0.2.5/csm-darwin-amd64"
      sha256 "23a3a4e07f155d30bb96e037b4d0a8ab8d46f43ffc6a87ebd461afad958bf742"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/welcomra1n/session-manager-tui/releases/download/v0.2.5/csm-linux-arm64"
      sha256 "56d86c3050230c3b33338bc9209ca07bfea5420e3e5a539541cbbe429bf3c21a"
    else
      url "https://github.com/welcomra1n/session-manager-tui/releases/download/v0.2.5/csm-linux-amd64"
      sha256 "bbefc0cbb67c80de1485b6e400907baa6ddd66c5606b5f508c8b819d7c5a47a8"
    end
  end

  def install
    bin.install Dir.glob("csm-*").first => "csm"
  end

  test do
    assert_match "csm", shell_output("#{bin}/csm --help 2>&1", 1)
  end
end
