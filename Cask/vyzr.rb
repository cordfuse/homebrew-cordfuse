cask "vyzr" do
  version "0.8.1"

  on_arm do
    url "https://github.com/cordfuse/vyzr/releases/download/v0.8.1/Vyzr-#{version}-arm64.dmg"
    sha256 "7183412a302c4d8137b7008fcbf06b2170fdd189debae8ed7adfe05e9d153ab9"
  end
  on_intel do
    url "https://github.com/cordfuse/vyzr/releases/download/v0.8.1/Vyzr-#{version}.dmg"
    sha256 "bc14d0cdca3c82d94c5137308a43e638e50f356aa438388ad7ae25b80b52c069"
  end

  name "Vyzr"
  desc "Your agent. Any device. No terminal."
  homepage "https://github.com/cordfuse/vyzr"

  app "Vyzr.app"

  zap trash: [
    "~/.vyzr",
    "~/Library/Application Support/Vyzr",
    "~/Library/Preferences/com.cordfuse.vyzr.plist",
    "~/Library/Saved Application State/com.cordfuse.vyzr.savedState",
  ]
end
