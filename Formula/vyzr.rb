class Vyzr < Formula
  desc "Vyzr — manage AI agents and the Vyzr server from your terminal"
  homepage "https://github.com/cordfuse/vyzr"
  version "0.5.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cordfuse/vyzr/releases/download/v0.5.5/vyzr-darwin-arm64"
      sha256 "6165950d5f16629db1400b5b854d53c5d7849196fc17aa79b1d9427016b11003"
    end
    on_intel do
      url "https://github.com/cordfuse/vyzr/releases/download/v0.5.5/vyzr-darwin-x64"
      sha256 "5befda0f497804e551d46be8b2bb2cceecf408b93af82b15cf591734f7829f3d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/cordfuse/vyzr/releases/download/v0.5.5/vyzr-linux-x64"
      sha256 "c9f6120a06700f115ea84de43e3b338ca2d154adef3d685821ad299eba504aa8"
    end
    on_arm do
      url "https://github.com/cordfuse/vyzr/releases/download/v0.5.5/vyzr-linux-arm64"
      sha256 "ff17903357006ef80ab46c8960c57c42c6b4f42471b36aa682470eb66fce814d"
    end
  end

  def install
    bin.install Dir["vyzr-*"].first => "vyzr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/vyzr --version")
  end
end
