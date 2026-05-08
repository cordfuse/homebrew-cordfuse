class Vyzr < Formula
  desc "Vyzr — manage AI agents and the Vyzr server from your terminal"
  homepage "https://github.com/cordfuse/vyzr"
  version "0.5.9"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cordfuse/vyzr/releases/download/v0.5.9/vyzr-darwin-arm64"
      sha256 "e36ea70a78bc95f3f022b44297f1414f963da2c0842f9cec7a3ffaa68b9ea0b0"
    end
    on_intel do
      url "https://github.com/cordfuse/vyzr/releases/download/v0.5.9/vyzr-darwin-x64"
      sha256 "756a834c14ae38e5e1ef605730a575711057308f36fac61911b62c10723b71f9"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/cordfuse/vyzr/releases/download/v0.5.9/vyzr-linux-x64"
      sha256 "1ef23e4fb8b773331ae29bf120942c4d6bc5dac6785f233f1fa072d35cee5c1b"
    end
    on_arm do
      url "https://github.com/cordfuse/vyzr/releases/download/v0.5.9/vyzr-linux-arm64"
      sha256 "e2cc80eaabb229d8466ce4f39cc9a74b9408ad6875896c57cdabaf43fe68d89c"
    end
  end

  def install
    bin.install Dir["vyzr-*"].first => "vyzr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/vyzr --version")
  end
end
