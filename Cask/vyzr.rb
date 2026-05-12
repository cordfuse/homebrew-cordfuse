cask "vyzr" do
  version "0.9.0"

  on_arm do
    url "https://github.com/cordfuse/vyzr/releases/download/v0.9.0/Vyzr-#{version}-arm64.dmg"
    sha256 "f2f4fcec9e36dea251ca3a7f68297eeb8fdf200b73a9f11375590be0b2232b00"
  end
  on_intel do
    url "https://github.com/cordfuse/vyzr/releases/download/v0.9.0/Vyzr-#{version}.dmg"
    sha256 "735521dcef7dc6f2823109c63d1b7cad76251c82c5f25e6f25d4b9f2a24cc068"
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
