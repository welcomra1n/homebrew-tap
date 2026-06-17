class Csm < Formula
  desc "TUI session manager for Claude Code + Codex"
  homepage "https://github.com/welcomra1n/session-manager-tui"
  version "0.3.8"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/welcomra1n/session-manager-tui/releases/download/v0.3.8/csm-darwin-arm64"
      sha256 "a31da08d0a56ebcce2eb2ba1d685330a423d629fcee1a1aa337f703b9ac6c36f"
    else
      url "https://github.com/welcomra1n/session-manager-tui/releases/download/v0.3.8/csm-darwin-amd64"
      sha256 "4dd6099ec500fb67e235fa383faa21580507f341cd279cb4d0c577134a0f4fe6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/welcomra1n/session-manager-tui/releases/download/v0.3.8/csm-linux-arm64"
      sha256 "bab4db1caee2f6ca1e65aca1e6d59c62dcef6b577a189d18a33c7016480bc46e"
    else
      url "https://github.com/welcomra1n/session-manager-tui/releases/download/v0.3.8/csm-linux-amd64"
      sha256 "22b630892f31429e991fa7dfc4e51feecc29c2da705ec90e6be32dc5efd53fec"
    end
  end

  def install
    bin.install Dir.glob("csm-*").first => "csm"
  end

  test do
    assert_match "csm", shell_output("#{bin}/csm --help 2>&1", 1)
  end
end
