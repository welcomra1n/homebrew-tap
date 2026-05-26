class Csm < Formula
  desc "TUI session manager for Claude Code + Codex"
  homepage "https://github.com/welcomra1n/session-manager-tui"
  version "0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/welcomra1n/session-manager-tui/releases/download/v0.2.0/csm-darwin-arm64"
      sha256 "ff7271798a1a0f6e744afd1f7074304608eccd5ef7786be9617e5ab1161fd843"
    else
      url "https://github.com/welcomra1n/session-manager-tui/releases/download/v0.2.0/csm-darwin-amd64"
      sha256 "bd2403a43540d7ccf5750ff99d9ed11310389dea90361cff43866b037348b4b3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/welcomra1n/session-manager-tui/releases/download/v0.2.0/csm-linux-arm64"
      sha256 "15575f4965018812a8060f5b5a0457cf40878798701f0968871d56d81d596e80"
    else
      url "https://github.com/welcomra1n/session-manager-tui/releases/download/v0.2.0/csm-linux-amd64"
      sha256 "d66eba740189a863e4edf46dab1e9eb6d0b8c56cf0df4404f04dcb475da02077"
    end
  end

  def install
    bin.install Dir.glob("csm-*").first => "csm"
  end

  test do
    assert_match "csm", shell_output("#{bin}/csm --help 2>&1", 1)
  end
end
