cask "csm-gui" do
  version "0.9.8"
  sha256 "8afa6b32609a3f83233e8f2d12fb6145080725aeee702a9844ff37ce389a4372"

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
