# Written by every Aggrega release from packaging/homebrew/aggrega.rb.in in
# https://github.com/aggrega-ai/aggrega-cli; a change made here is replaced by
# the next release.
class Aggrega < Formula
  desc "Deterministic ahead-of-time compiler for deployment artifacts"
  homepage "https://aggrega.ai"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/aggrega-ai/aggrega-cli/releases/download/v0.8.9/aggrega-0.8.9-darwin-arm64"
      sha256 "9a6bc1554df976177f3d1fe5fe53ae57305465f3cadfa6e800f9b9c69f201aa4"
    end
    on_intel do
      url "https://github.com/aggrega-ai/aggrega-cli/releases/download/v0.8.9/aggrega-0.8.9-darwin-amd64"
      sha256 "8120f11d46a86c9fe7036664229a29d550fe130c7091e804f23980b299608983"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/aggrega-ai/aggrega-cli/releases/download/v0.8.9/aggrega-0.8.9-linux-arm64"
      sha256 "7bb8840f784e1265ce2ea24c6a30d46dca977bdfba41ad6a2c367e4276ec2504"
    end
    on_intel do
      url "https://github.com/aggrega-ai/aggrega-cli/releases/download/v0.8.9/aggrega-0.8.9-linux-amd64"
      sha256 "cad8f5d43cda17e8d449fdcc16ee5c6ed164db25cf010b38e4d0fca67c275229"
    end
  end

  def install
    # The download is the executable itself, staged under the file name its
    # address ends in.
    bin.install File.basename(stable.url) => "aggrega"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/aggrega version")
  end
end
