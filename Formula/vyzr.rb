class Vyzr < Formula
  desc "Vyzr — manage AI agents and the Vyzr server from your terminal"
  homepage "https://github.com/cordfuse/vyzr"
  version "0.6.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cordfuse/vyzr/releases/download/v0.6.0/vyzr-darwin-arm64"
      sha256 "b172f55868460c170c9336a3f19f49bb816622c7bc3d7ffc7f421777250c16da"
    end
    on_intel do
      url "https://github.com/cordfuse/vyzr/releases/download/v0.6.0/vyzr-darwin-x64"
      sha256 "6052359c9febab99bf5cb721af091c723b1cdc968a4088258e6d9911840e38f1"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/cordfuse/vyzr/releases/download/v0.6.0/vyzr-linux-x64"
      sha256 "8bf2fe3718a79fc7c7473e9c8e8dc0d40d8df60f910d61bb41b74d98f467d5e1"
    end
    on_arm do
      url "https://github.com/cordfuse/vyzr/releases/download/v0.6.0/vyzr-linux-arm64"
      sha256 "4a7ea2b1b20f6657d7a3157852547a2db7b7c3a2e393430b145e4916bd0d76ec"
    end
  end

  def install
    bin.install Dir["vyzr-*"].first => "vyzr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/vyzr --version")
  end
end
