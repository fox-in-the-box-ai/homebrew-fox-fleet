class FoxControl < Formula
  desc "Fox Fleet management plane — provision and manage Fox AI assistant instances"
  homepage "https://github.com/fox-in-the-box-ai/fox-fleet"
  version "1.4.2"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/fox-in-the-box-ai/fox-fleet/releases/download/v1.4.2/fox-control-v1.4.2-darwin-arm64.tar.gz"
      sha256 "b6843c4a6a34ecbc879fd3d81e45c4b240eb57a9507153b24c0f2f1dd162c246"
    end
    on_intel do
      url "https://github.com/fox-in-the-box-ai/fox-fleet/releases/download/v1.4.2/fox-control-v1.4.2-darwin-amd64.tar.gz"
      sha256 "f4ad0bebe8fa9f9e6531b70ab874976755c4e471f682d4a5f771cd136dfc920c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/fox-in-the-box-ai/fox-fleet/releases/download/v1.4.2/fox-control-v1.4.2-linux-arm64.tar.gz"
      sha256 "4c56471a4fa4a8aaea3b0ed07a038e44011bdcd901aea00158a90df0e77d8079"
    end
    on_intel do
      url "https://github.com/fox-in-the-box-ai/fox-fleet/releases/download/v1.4.2/fox-control-v1.4.2-linux-amd64.tar.gz"
      sha256 "50915ebaef19c5d4fd1e040abdcfc19a5b62e3ab0a61d053959b1110ed5cb6da"
    end
  end

  def install
    bin.install "fox-control"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fox-control version")
  end
end
