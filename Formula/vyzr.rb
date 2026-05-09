class Vyzr < Formula
  desc "Vyzr — manage AI agents and the Vyzr server from your terminal"
  homepage "https://github.com/cordfuse/vyzr"
  version "0.8.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cordfuse/vyzr/releases/download/v0.8.1/vyzr-darwin-arm64"
      sha256 "e7dc1db81e330a1f4330bf18a416e5a88f1c305294e7833200f52194df1c9434"
    end
    on_intel do
      url "https://github.com/cordfuse/vyzr/releases/download/v0.8.1/vyzr-darwin-x64"
      sha256 "0fec914a5937b08d3e1e33136369cb3113ae41c4c5d0b7829401c1e7802d07c5"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/cordfuse/vyzr/releases/download/v0.8.1/vyzr-linux-x64"
      sha256 "559507e7fd4f235caa1ae4e2ec184c7d6efd12835f01f36127d379c696a4bb59"
    end
    on_arm do
      url "https://github.com/cordfuse/vyzr/releases/download/v0.8.1/vyzr-linux-arm64"
      sha256 "f4ad9b27256beb861e9967b73ccee3c63bd9c7be829607bfd368ac175372bb76"
    end
  end

  def install
    bin.install Dir["vyzr-*"].first => "vyzr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/vyzr --version")
  end
end
