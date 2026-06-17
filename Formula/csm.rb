class Csm < Formula
  desc "TUI session manager for Claude Code + Codex"
  homepage "https://github.com/welcomra1n/session-manager-tui"
  version "0.3.12"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/welcomra1n/session-manager-tui/releases/download/v0.3.12/csm-darwin-arm64"
      sha256 "9ca941cb2f3f7968148080506943184265128dc92289ad5197b5df2e1777446c"
    else
      url "https://github.com/welcomra1n/session-manager-tui/releases/download/v0.3.12/csm-darwin-amd64"
      sha256 "fbe3011449686f516dfc942ad143592cc0a80df552d02a6f8e494038e59c91eb"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/welcomra1n/session-manager-tui/releases/download/v0.3.12/csm-linux-arm64"
      sha256 "f09636731a7ce8365d70416daff56d337fdd43e775b7b6dba9f620771b44e861"
    else
      url "https://github.com/welcomra1n/session-manager-tui/releases/download/v0.3.12/csm-linux-amd64"
      sha256 "fa3a7680ec4da5d36028d685de4e85ee4aaae1afce8f0c5d37263b4208faa5d3"
    end
  end

  def install
    bin.install Dir.glob("csm-*").first => "csm"
  end

  test do
    assert_match "csm", shell_output("#{bin}/csm --help 2>&1", 1)
  end
end
