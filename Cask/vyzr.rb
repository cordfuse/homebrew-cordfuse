# Cask for homebrew tap: cordfuse/homebrew-cordfuse
# Lives at: Cask/vyzr.rb
#
# Install:
#   brew tap cordfuse/cordfuse
#   brew install --cask vyzr
#
# This cask is auto-bumped by cordfuse/vyzr's homebrew.yml workflow on every
# tag — the version + sha256 below get rewritten in lockstep with the DMG
# artifacts attached to the GitHub release.

cask "vyzr" do
  version "0.8.0"

  on_arm do
    url "https://github.com/cordfuse/vyzr/releases/download/v#{version}/Vyzr-#{version}-arm64.dmg"
    sha256 "REPLACE_WITH_DARWIN_ARM64_DMG_SHA256"
  end
  on_intel do
    url "https://github.com/cordfuse/vyzr/releases/download/v#{version}/Vyzr-#{version}.dmg"
    sha256 "REPLACE_WITH_DARWIN_X64_DMG_SHA256"
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
