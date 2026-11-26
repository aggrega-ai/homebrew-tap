# Written by every Aggrega release from packaging/homebrew/aggrega.rb.in in
# https://github.com/aggrega-ai/aggrega-cli; a change made here is replaced by
# the next release.
class Aggrega < Formula
  desc "Deterministic ahead-of-time compiler for deployment artifacts"
  homepage "https://aggrega.ai"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/aggrega-ai/aggrega-cli/releases/download/v0.10.4/aggrega-0.10.4-darwin-arm64"
      sha256 "1097ac7772bd5ea20976a85936ae36615558a3eadea476be320096d6add94079"
    end
    on_intel do
      url "https://github.com/aggrega-ai/aggrega-cli/releases/download/v0.10.4/aggrega-0.10.4-darwin-amd64"
      sha256 "2e62fdb5b64bc52b4284f9f147c6a0e1ac1e2e60fd03fcc28aa7826dfcf8cf1c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/aggrega-ai/aggrega-cli/releases/download/v0.10.4/aggrega-0.10.4-linux-arm64"
      sha256 "966e13269dfcff555b9a2a7f3d34a8aa6b39b2389b402d0a534e1a99e85c4d2f"
    end
    on_intel do
      url "https://github.com/aggrega-ai/aggrega-cli/releases/download/v0.10.4/aggrega-0.10.4-linux-amd64"
      sha256 "7951a9ef1ff8dd6cb75b0038bcfd08450bd5bf039d3dfd2933088090291c070b"
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
