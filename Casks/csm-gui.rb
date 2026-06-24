cask "csm-gui" do
  version "0.8.6"
  sha256 "1215213bcdd943e7d4ad6a7613c03a1bae5308bb9fc92a16b1e888ce61b0b240"

  url "https://github.com/welcomra1n/csm-gui/releases/download/v#{version}/csm-gui-darwin.zip"
  name "csm GUI"
  desc "GUI session manager for Claude Code + Codex"
  homepage "https://github.com/welcomra1n/csm-gui"

  app "csm.app"

  zap trash: [
    "~/Library/Application Support/csm",
    "~/Library/Preferences/csm.plist",
    "~/Library/Saved Application State/csm.savedState",
  ]
end
