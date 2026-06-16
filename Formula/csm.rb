class Csm < Formula
  desc "TUI session manager for Claude Code + Codex"
  homepage "https://github.com/welcomra1n/session-manager-tui"
  version "0.3.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/welcomra1n/session-manager-tui/releases/download/v0.3.2/csm-darwin-arm64"
      sha256 "45733d704d07a0a81e3433b6b5976ae4f370a5a8189a60c8e31cf1f74d93acba"
    else
      url "https://github.com/welcomra1n/session-manager-tui/releases/download/v0.3.2/csm-darwin-amd64"
      sha256 "6b7926816a885d4b16fe87a1595569e9309cb7407978b75a05e9921ce7765a04"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/welcomra1n/session-manager-tui/releases/download/v0.3.2/csm-linux-arm64"
      sha256 "77430d032a32c4d6dcf733af79aa2e3b61649a1e5b6b837b468d83ef0998a25c"
    else
      url "https://github.com/welcomra1n/session-manager-tui/releases/download/v0.3.2/csm-linux-amd64"
      sha256 "a014545824fbc02df27ee9c55aa510a2e654ec52b06204cb7d53ad24cd08133d"
    end
  end

  def install
    bin.install Dir.glob("csm-*").first => "csm"
  end

  test do
    assert_match "csm", shell_output("#{bin}/csm --help 2>&1", 1)
  end
end
