# Written by every Aggrega release from packaging/homebrew/aggrega.rb.in in
# https://github.com/aggrega-ai/aggrega-cli; a change made here is replaced by
# the next release.
class Aggrega < Formula
  desc "Deterministic ahead-of-time compiler for deployment artifacts"
  homepage "https://aggrega.ai"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/aggrega-ai/aggrega-cli/releases/download/v0.9.3/aggrega-0.9.3-darwin-arm64"
      sha256 "cad9604fb9b25090cd241e36672ad6db1f6a0104959e6483e406fae3a434e683"
    end
    on_intel do
      url "https://github.com/aggrega-ai/aggrega-cli/releases/download/v0.9.3/aggrega-0.9.3-darwin-amd64"
      sha256 "b3d96bcd8790e4c04133573e45cc5b7bf71ba49c4110e8b0c309c8d59c77f8f1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/aggrega-ai/aggrega-cli/releases/download/v0.9.3/aggrega-0.9.3-linux-arm64"
      sha256 "bec7b505e44753875899890bd73096fa1637f00c64b44cb7e94d9abde0242d12"
    end
    on_intel do
      url "https://github.com/aggrega-ai/aggrega-cli/releases/download/v0.9.3/aggrega-0.9.3-linux-amd64"
      sha256 "8b4e0272db9391ffdaf4d968f34e9ba1a28667a296a94dc88f9086dfc898b2e5"
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
