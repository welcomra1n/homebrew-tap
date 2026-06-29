cask "csm-gui" do
  version "0.9.42"
  sha256 "c326bf82bac666a9a6ca13587b9afb95a1bf39b6e0c4f7bf5295420ca2334e33"

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
