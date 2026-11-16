# Written by every Aggrega release from packaging/homebrew/aggrega.rb.in in
# https://github.com/aggrega-ai/aggrega-cli; a change made here is replaced by
# the next release.
class Aggrega < Formula
  desc "Deterministic ahead-of-time compiler for deployment artifacts"
  homepage "https://aggrega.ai"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/aggrega-ai/aggrega-cli/releases/download/v0.9.2/aggrega-0.9.2-darwin-arm64"
      sha256 "f44ad0c2a6a98185d5b19d1b2c52551b10d0bfcb5c04f5e0a40499e0e523fb05"
    end
    on_intel do
      url "https://github.com/aggrega-ai/aggrega-cli/releases/download/v0.9.2/aggrega-0.9.2-darwin-amd64"
      sha256 "fed81b2a164ab4eb996b53efabd4f1bfe28c54a4f4ca22ad33bd41a805268b38"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/aggrega-ai/aggrega-cli/releases/download/v0.9.2/aggrega-0.9.2-linux-arm64"
      sha256 "124e6e18e89a70c439c8e1c99d62fdacfef92541a3901f93919306afd3726bc8"
    end
    on_intel do
      url "https://github.com/aggrega-ai/aggrega-cli/releases/download/v0.9.2/aggrega-0.9.2-linux-amd64"
      sha256 "582fa18a0e6eddbb306e9a13a1123965ad6e547b436b04c575b47eb02f4662c8"
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
