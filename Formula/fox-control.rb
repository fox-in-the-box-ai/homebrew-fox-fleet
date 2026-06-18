class FoxControl < Formula
  desc "Fox Fleet management plane — provision and manage Fox AI assistant instances"
  homepage "https://github.com/fox-in-the-box-ai/fox-fleet"
  version "1.5.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/fox-in-the-box-ai/fox-fleet/releases/download/v1.5.1/fox-control-v1.5.1-darwin-arm64.tar.gz"
      sha256 "ea211e7e992e0512acea6205fb4094247a3f8f5984a7eabab9d25d89e23f68c9"
    end
    on_intel do
      url "https://github.com/fox-in-the-box-ai/fox-fleet/releases/download/v1.5.1/fox-control-v1.5.1-darwin-amd64.tar.gz"
      sha256 "9e21820b28a914dc8798589dd840d5d7961f01c13093525a6dbc55316648bd79"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/fox-in-the-box-ai/fox-fleet/releases/download/v1.5.1/fox-control-v1.5.1-linux-arm64.tar.gz"
      sha256 "3c42c42e4dd1f37f63a016c49e27512e0b30404afe11eed7e2aeb3eadf6823bc"
    end
    on_intel do
      url "https://github.com/fox-in-the-box-ai/fox-fleet/releases/download/v1.5.1/fox-control-v1.5.1-linux-amd64.tar.gz"
      sha256 "f04344272170844103815dda2fcd68f5f89f730a7f2fcaa190e164dfa2470699"
    end
  end

  def install
    bin.install "fox-control"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fox-control version")
  end
end
