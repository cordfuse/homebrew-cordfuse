class Vyzr < Formula
  desc "Vyzr — manage AI agents and the Vyzr server from your terminal"
  homepage "https://github.com/cordfuse/vyzr"
  version "0.8.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cordfuse/vyzr/releases/download/v0.8.3/vyzr-darwin-arm64"
      sha256 "f9cd66c116d4d75c3ff191a8bbd8ad72d8b4315c976189ed33927bfedc83daea"
    end
    on_intel do
      url "https://github.com/cordfuse/vyzr/releases/download/v0.8.3/vyzr-darwin-x64"
      sha256 "5cab79f01ddc0e5fef26dce5a83ae495283b3546ff4177d2d67f24903d8881b1"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/cordfuse/vyzr/releases/download/v0.8.3/vyzr-linux-x64"
      sha256 "db507c6cfb71b372628af679a359d5aa3132428a0192b82c660d17bde6220b37"
    end
    on_arm do
      url "https://github.com/cordfuse/vyzr/releases/download/v0.8.3/vyzr-linux-arm64"
      sha256 "fb655e9677d87abf85137469888f0ae619faf031eb0393ba570a3208a8fb6084"
    end
  end

  def install
    bin.install Dir["vyzr-*"].first => "vyzr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/vyzr --version")
  end
end
