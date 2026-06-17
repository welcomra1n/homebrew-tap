class Csm < Formula
  desc "TUI session manager for Claude Code + Codex"
  homepage "https://github.com/welcomra1n/session-manager-tui"
  version "0.3.7"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/welcomra1n/session-manager-tui/releases/download/v0.3.7/csm-darwin-arm64"
      sha256 "05051d0809fe0afff9733db4e3e6afa59c8de5d5bbe38d93675f816db9577b36"
    else
      url "https://github.com/welcomra1n/session-manager-tui/releases/download/v0.3.7/csm-darwin-amd64"
      sha256 "78a7239954e9cadbce9ec8e740fceeb276983bc8c08d8fa961629823f38fb95b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/welcomra1n/session-manager-tui/releases/download/v0.3.7/csm-linux-arm64"
      sha256 "a3ef1a4838a748e4edced9b7dc84e32a1469fd3519c272beb2e8c6341a294479"
    else
      url "https://github.com/welcomra1n/session-manager-tui/releases/download/v0.3.7/csm-linux-amd64"
      sha256 "b6407f52d226becdd827225f45ce74dc9189183ceb465014f814fa8899fd2540"
    end
  end

  def install
    bin.install Dir.glob("csm-*").first => "csm"
  end

  test do
    assert_match "csm", shell_output("#{bin}/csm --help 2>&1", 1)
  end
end
