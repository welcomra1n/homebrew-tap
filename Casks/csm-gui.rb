cask "csm-gui" do
  version "0.9.14"
  sha256 "d480ee8e35924875fbb0258b581de7e47635c38755f2dae2e1c91a6c6eca2a1a"

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
