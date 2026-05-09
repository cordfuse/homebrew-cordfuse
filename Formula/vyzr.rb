class Vyzr < Formula
  desc "Vyzr — manage AI agents and the Vyzr server from your terminal"
  homepage "https://github.com/cordfuse/vyzr"
  version "0.8.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cordfuse/vyzr/releases/download/v0.8.0/vyzr-darwin-arm64"
      sha256 "fa87fdfb0aef77011545e688098f2efb05612d9bf9fc55ab6f817a26bd341626"
    end
    on_intel do
      url "https://github.com/cordfuse/vyzr/releases/download/v0.8.0/vyzr-darwin-x64"
      sha256 "6c80b7c74f6a4dbc08f37a72ebb54cefc6a6463bb76adcb967f1b745d2302d65"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/cordfuse/vyzr/releases/download/v0.8.0/vyzr-linux-x64"
      sha256 "7cb1ceb4114ea2dcc60523cf794072c23d28f2a12fa025ccf3104160cef50a03"
    end
    on_arm do
      url "https://github.com/cordfuse/vyzr/releases/download/v0.8.0/vyzr-linux-arm64"
      sha256 "95b5ee23609c30dd8f834c1dea8799127d5cf3ff995dfb752a094ce8b91fd5a6"
    end
  end

  def install
    bin.install Dir["vyzr-*"].first => "vyzr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/vyzr --version")
  end
end
