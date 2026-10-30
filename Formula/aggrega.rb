# Written by every Aggrega release from packaging/homebrew/aggrega.rb.in in
# https://github.com/aggrega-ai/aggrega-cli; a change made here is replaced by
# the next release.
class Aggrega < Formula
  desc "Deterministic ahead-of-time compiler for deployment artifacts"
  homepage "https://aggrega.ai"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/aggrega-ai/aggrega-cli/releases/download/v0.8.8/aggrega-0.8.8-darwin-arm64"
      sha256 "cac96e8317a035699e85806f51941256b4924916dce9c3ff7932bc304dd6bc96"
    end
    on_intel do
      url "https://github.com/aggrega-ai/aggrega-cli/releases/download/v0.8.8/aggrega-0.8.8-darwin-amd64"
      sha256 "80b594a1a236b20de89027204ada0dff3eccf83a8fb76d9c3c3cc8f74dd66290"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/aggrega-ai/aggrega-cli/releases/download/v0.8.8/aggrega-0.8.8-linux-arm64"
      sha256 "5f446e64ee2cbc5a2f49e812a41291d54dbc457d60f241e11dd7e8d1e0ff9692"
    end
    on_intel do
      url "https://github.com/aggrega-ai/aggrega-cli/releases/download/v0.8.8/aggrega-0.8.8-linux-amd64"
      sha256 "06bed9389ecc965ae811ce3d3b33d1176c52001271d942d1793cd5a9b3a8b697"
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
