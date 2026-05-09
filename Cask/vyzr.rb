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
    sha256 "11cd1b7f3721bb9956153addd22f8470bb17262ec3c7808d6797539fba123938"
  end
  on_intel do
    url "https://github.com/cordfuse/vyzr/releases/download/v#{version}/Vyzr-#{version}.dmg"
    sha256 "2a2eb5e77a4ef2d3633531c9ae4c1e2d398554a2e2603a23240bdf1ac3554985"
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
