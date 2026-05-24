class Csm < Formula
  desc "Claude Code + Codex session manager TUI"
  homepage "https://github.com/welcomra1n/session-manager-tui"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/welcomra1n/session-manager-tui/releases/download/v0.1.0/csm-darwin-arm64"
      sha256 "945429b20c205d2d4ac8016aefc9fefc38695a674aa25431dafa28e56b61c35d"
    else
      url "https://github.com/welcomra1n/session-manager-tui/releases/download/v0.1.0/csm-darwin-amd64"
      sha256 "5aa2b240ae9d1fb1724647f989a62c0b3b577ee17941bd2c5a45517c02e0c273"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/welcomra1n/session-manager-tui/releases/download/v0.1.0/csm-linux-arm64"
      sha256 "9f796367cc01c6bb28fd1fd7eb8c0d64cb4597fe6447d094b698add1cfd59c70"
    else
      url "https://github.com/welcomra1n/session-manager-tui/releases/download/v0.1.0/csm-linux-amd64"
      sha256 "096e41c2ab779630c97da5e6a777c73f56467b2e0bc888bc4ff59c0f41d42cd6"
    end
  end

  def install
    binary = Dir["csm-*"].first || "csm"
    bin.install binary => "csm"
  end

  test do
    assert_match "csm", shell_output("#{bin}/csm --help 2>&1", 1)
  end
end
