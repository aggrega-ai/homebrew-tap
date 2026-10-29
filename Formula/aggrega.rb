# Written by every Aggrega release from packaging/homebrew/aggrega.rb.in in
# https://github.com/aggrega-ai/aggrega-cli; a change made here is replaced by
# the next release.
class Aggrega < Formula
  desc "Deterministic ahead-of-time compiler for deployment artifacts"
  homepage "https://aggrega.ai"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/aggrega-ai/aggrega-cli/releases/download/v0.8.7/aggrega-0.8.7-darwin-arm64"
      sha256 "2b02f50b886dc6292ce2d5dcfb4c667f96bc6feb1cfe9a414f6d64dd4b00e393"
    end
    on_intel do
      url "https://github.com/aggrega-ai/aggrega-cli/releases/download/v0.8.7/aggrega-0.8.7-darwin-amd64"
      sha256 "db0bbab3de3daf111bfade77215f530f001eacdd1ecb73443a8834eb586614c5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/aggrega-ai/aggrega-cli/releases/download/v0.8.7/aggrega-0.8.7-linux-arm64"
      sha256 "c49ee7ae15098c2b9357f917cddf570579fda56db54139ac973345e2cb3b09dc"
    end
    on_intel do
      url "https://github.com/aggrega-ai/aggrega-cli/releases/download/v0.8.7/aggrega-0.8.7-linux-amd64"
      sha256 "75b01deef8c067375b42351872098c09b7dcb4462a1fde9038f824b656bbc04c"
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
