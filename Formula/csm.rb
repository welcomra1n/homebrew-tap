class Csm < Formula
  desc "TUI session manager for Claude Code + Codex"
  homepage "https://github.com/welcomra1n/session-manager-tui"
  version "0.3.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/welcomra1n/session-manager-tui/releases/download/v0.3.1/csm-darwin-arm64"
      sha256 "0282499e805426682782826960ae74fad1babaf846d932c8ab0fc2cdd7792134"
    else
      url "https://github.com/welcomra1n/session-manager-tui/releases/download/v0.3.1/csm-darwin-amd64"
      sha256 "9bf9dc14cf9eba3a0b4741d6b17bc66132f08e60888714399ce19cfac9713fa9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/welcomra1n/session-manager-tui/releases/download/v0.3.1/csm-linux-arm64"
      sha256 "8eb15665616b72a3b8622a4c0b96bec62df454e2322dc95316d28a9e8e921e56"
    else
      url "https://github.com/welcomra1n/session-manager-tui/releases/download/v0.3.1/csm-linux-amd64"
      sha256 "584c45521267e1f9eff8144aeb58fceee462c23cfb1f5fd4b78dfab4d11e0c32"
    end
  end

  def install
    bin.install Dir.glob("csm-*").first => "csm"
  end

  test do
    assert_match "csm", shell_output("#{bin}/csm --help 2>&1", 1)
  end
end
