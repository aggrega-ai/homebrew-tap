# Written by every Aggrega release from packaging/homebrew/aggrega.rb.in in
# https://github.com/aggrega-ai/aggrega-cli; a change made here is replaced by
# the next release.
class Aggrega < Formula
  desc "Deterministic ahead-of-time compiler for deployment artifacts"
  homepage "https://aggrega.ai"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/aggrega-ai/aggrega-cli/releases/download/v0.9.1/aggrega-0.9.1-darwin-arm64"
      sha256 "da8dc3190c9b3df757181b755401518de5055e05760489387bedbc2ae08eb90e"
    end
    on_intel do
      url "https://github.com/aggrega-ai/aggrega-cli/releases/download/v0.9.1/aggrega-0.9.1-darwin-amd64"
      sha256 "3cbe1627dc41132e74e501b1a80bb55f00bdb073a5d3cde545ae727d214aba58"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/aggrega-ai/aggrega-cli/releases/download/v0.9.1/aggrega-0.9.1-linux-arm64"
      sha256 "7ebad353b3749b1ce8bfcb4cbaa0db8d4447e7ffc3949ccfaf9eac1382db5840"
    end
    on_intel do
      url "https://github.com/aggrega-ai/aggrega-cli/releases/download/v0.9.1/aggrega-0.9.1-linux-amd64"
      sha256 "0abda7fe95d9e79d3568294050f49238d4beed1b63cd35e1264b75d85bdd46a3"
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
