class Vyzr < Formula
  desc "Vyzr — manage AI agents and the Vyzr server from your terminal"
  homepage "https://github.com/cordfuse/vyzr"
  version "0.5.8"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cordfuse/vyzr/releases/download/v0.5.8/vyzr-darwin-arm64"
      sha256 "de9fa0e239ad51f7bd25f3312eab29be79e55e6db765861f6f2e366663bebba5"
    end
    on_intel do
      url "https://github.com/cordfuse/vyzr/releases/download/v0.5.8/vyzr-darwin-x64"
      sha256 "610aeba88c662c5280a67d83a1fa89f6149a1145cdc7f1f6b526e792a4e5de64"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/cordfuse/vyzr/releases/download/v0.5.8/vyzr-linux-x64"
      sha256 "59971f8fc7566951185319159918d04e073b9d2ae445fb96a7ede4accac31c14"
    end
    on_arm do
      url "https://github.com/cordfuse/vyzr/releases/download/v0.5.8/vyzr-linux-arm64"
      sha256 "2b71e90a2b02ef82fb059cb07cb490ff6341fb9a0bdd04101a52d964e0ebc922"
    end
  end

  def install
    bin.install Dir["vyzr-*"].first => "vyzr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/vyzr --version")
  end
end
