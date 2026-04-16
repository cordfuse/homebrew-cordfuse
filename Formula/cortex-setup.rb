# Formula for homebrew-cordfuse tap: cordfuse/homebrew-cordfuse
# Place this at: Formula/cortex-setup.rb
#
# To install:
#   brew tap cordfuse/cordfuse
#   brew install cortex-setup

class CortexSetup < Formula
  desc "First-time setup wizard for Cortex — private AI-scribed record-keeping"
  homepage "https://github.com/cordfuse/cortex"
  version "1.0.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cordfuse/cortex/releases/download/setup-v#{version}/cortex-setup-mac-arm64"
      sha256 ""
    end
    on_intel do
      url "https://github.com/cordfuse/cortex/releases/download/setup-v#{version}/cortex-setup-mac-x64"
      sha256 ""
    end
  end

  def install
    bin.install Dir["cortex-setup-mac-*"].first => "cortex-setup"
  end

  test do
    assert_match "cortex-setup", shell_output("#{bin}/cortex-setup --help")
  end
end
