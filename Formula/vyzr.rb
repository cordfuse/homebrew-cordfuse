class Vyzr < Formula
  desc "Vyzr — manage AI agents and the Vyzr server from your terminal"
  homepage "https://github.com/cordfuse/vyzr"
  version "0.9.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cordfuse/vyzr/releases/download/v0.9.0/vyzr-darwin-arm64"
      sha256 "fb6ae21028922ac5b97d353543fc9c2872e4e1bd64b204f216ead273c3f7be7a"
    end
    on_intel do
      url "https://github.com/cordfuse/vyzr/releases/download/v0.9.0/vyzr-darwin-x64"
      sha256 "70942a39ef506d5efc0f1b1ad88d062bd9dc56709ce5c830d14fa3e08e7cd777"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/cordfuse/vyzr/releases/download/v0.9.0/vyzr-linux-x64"
      sha256 "4ad9371c4a9bdbdd233d0aed8d7ed6a0eae62cfb9db72f4fffa542042aeb11fd"
    end
    on_arm do
      url "https://github.com/cordfuse/vyzr/releases/download/v0.9.0/vyzr-linux-arm64"
      sha256 "d82fdc690db4e23e7f56a0750b1eb8773689500d054cc9cc6dfb3ce8e70fb98a"
    end
  end

  def install
    bin.install Dir["vyzr-*"].first => "vyzr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/vyzr --version")
  end
end
