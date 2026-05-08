class Vyzr < Formula
  desc "Vyzr — manage AI agents and the Vyzr server from your terminal"
  homepage "https://github.com/cordfuse/vyzr"
  version "0.7.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cordfuse/vyzr/releases/download/v0.7.0/vyzr-darwin-arm64"
      sha256 "ac72d1f8c3b7bcd114d96c7dd95383a41def8aa5f6d24ba13829ecfefb4452c1"
    end
    on_intel do
      url "https://github.com/cordfuse/vyzr/releases/download/v0.7.0/vyzr-darwin-x64"
      sha256 "4bafd1980bb4bc52d1be8ea577ab847810aaafb966494d380778d6d74d33cf5a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/cordfuse/vyzr/releases/download/v0.7.0/vyzr-linux-x64"
      sha256 "390cb385cc716ee3708107ec58fc8b9219418c43869f97e8ec34237a41fea989"
    end
    on_arm do
      url "https://github.com/cordfuse/vyzr/releases/download/v0.7.0/vyzr-linux-arm64"
      sha256 "fb1440ad31280e10df08392e2de5ffda707d42aaea5c241cae9f6a1e98b24453"
    end
  end

  def install
    bin.install Dir["vyzr-*"].first => "vyzr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/vyzr --version")
  end
end
