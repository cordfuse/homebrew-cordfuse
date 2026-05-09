class Vyzr < Formula
  desc "Vyzr — manage AI agents and the Vyzr server from your terminal"
  homepage "https://github.com/cordfuse/vyzr"
  version "0.8.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cordfuse/vyzr/releases/download/v0.8.2/vyzr-darwin-arm64"
      sha256 "6e6685a7a8a1263e63ed6fc22b9eeb68cdc76d35b71444470b100043f44ae725"
    end
    on_intel do
      url "https://github.com/cordfuse/vyzr/releases/download/v0.8.2/vyzr-darwin-x64"
      sha256 "346824d1acdba8491d451fd9534a3a66dc7302eb5612b582d758fbba5adadaa9"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/cordfuse/vyzr/releases/download/v0.8.2/vyzr-linux-x64"
      sha256 "6af3050f2e3af2794c425449cc8abaad79d602a637c7eb4aa1f5bce5c6b3da44"
    end
    on_arm do
      url "https://github.com/cordfuse/vyzr/releases/download/v0.8.2/vyzr-linux-arm64"
      sha256 "a429c5b47aedb7f4d0e3974a352678a8d090ffa37dc6e7814119b7b570c716e4"
    end
  end

  def install
    bin.install Dir["vyzr-*"].first => "vyzr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/vyzr --version")
  end
end
