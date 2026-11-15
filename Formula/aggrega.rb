# Written by every Aggrega release from packaging/homebrew/aggrega.rb.in in
# https://github.com/aggrega-ai/aggrega-cli; a change made here is replaced by
# the next release.
class Aggrega < Formula
  desc "Deterministic ahead-of-time compiler for deployment artifacts"
  homepage "https://aggrega.ai"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/aggrega-ai/aggrega-cli/releases/download/v0.9.0/aggrega-0.9.0-darwin-arm64"
      sha256 "86e9707b148c185adcab41b5d6b2cdf680b3c63c90edd994e309eb5e245e0353"
    end
    on_intel do
      url "https://github.com/aggrega-ai/aggrega-cli/releases/download/v0.9.0/aggrega-0.9.0-darwin-amd64"
      sha256 "de9b93f23ed19dec1f99bcfa1607759388c6d5336cfb9b9c58eb6271c1df7259"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/aggrega-ai/aggrega-cli/releases/download/v0.9.0/aggrega-0.9.0-linux-arm64"
      sha256 "87cde32921d64f055ed0db58c86c320b09ac9eb85bbdd80493e7b28843d10923"
    end
    on_intel do
      url "https://github.com/aggrega-ai/aggrega-cli/releases/download/v0.9.0/aggrega-0.9.0-linux-amd64"
      sha256 "cb0dbbd04630c4134e8051565cf56a133b116c10ef7b9b90ae5dbf821d948a7b"
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
