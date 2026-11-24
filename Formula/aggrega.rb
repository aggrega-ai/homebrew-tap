# Written by every Aggrega release from packaging/homebrew/aggrega.rb.in in
# https://github.com/aggrega-ai/aggrega-cli; a change made here is replaced by
# the next release.
class Aggrega < Formula
  desc "Deterministic ahead-of-time compiler for deployment artifacts"
  homepage "https://aggrega.ai"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/aggrega-ai/aggrega-cli/releases/download/v0.10.3/aggrega-0.10.3-darwin-arm64"
      sha256 "e36104f4b7c1a40cb341e71b96cda38adbb7831b2878b3ea9e165a76ff626015"
    end
    on_intel do
      url "https://github.com/aggrega-ai/aggrega-cli/releases/download/v0.10.3/aggrega-0.10.3-darwin-amd64"
      sha256 "8178d10c8f2e3ee8b484757400013c302d02998642c5792ef47d3166532cf52a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/aggrega-ai/aggrega-cli/releases/download/v0.10.3/aggrega-0.10.3-linux-arm64"
      sha256 "9a4d802bff0c7d92fa7c2958ddfac99be2eefabe7a338bd2e97ecf0ed3bb00cd"
    end
    on_intel do
      url "https://github.com/aggrega-ai/aggrega-cli/releases/download/v0.10.3/aggrega-0.10.3-linux-amd64"
      sha256 "0c884e71b44496567f27280d1cb197f948dc441904f602146d6237ba645d8c05"
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
