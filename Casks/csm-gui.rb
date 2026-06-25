cask "csm-gui" do
  version "0.9.17"
  sha256 "4a8a906b03454285eb8d2d59e366d4abef960d5f0626dfe95963db9404b967e5"

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
