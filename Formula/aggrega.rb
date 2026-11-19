# Written by every Aggrega release from packaging/homebrew/aggrega.rb.in in
# https://github.com/aggrega-ai/aggrega-cli; a change made here is replaced by
# the next release.
class Aggrega < Formula
  desc "Deterministic ahead-of-time compiler for deployment artifacts"
  homepage "https://aggrega.ai"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/aggrega-ai/aggrega-cli/releases/download/v0.10.0/aggrega-0.10.0-darwin-arm64"
      sha256 "a27d809d59896604f16392b98591ac0131156ddee7859ed3549ced8a23b54a54"
    end
    on_intel do
      url "https://github.com/aggrega-ai/aggrega-cli/releases/download/v0.10.0/aggrega-0.10.0-darwin-amd64"
      sha256 "05a9195283394a5207145234276b081afcea42f0b1a2d1b8e0f38f302b619422"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/aggrega-ai/aggrega-cli/releases/download/v0.10.0/aggrega-0.10.0-linux-arm64"
      sha256 "8227bd36d2d68db1f8fcf9937247b95999f3d2d2fb686bd1164b6314c41dd40b"
    end
    on_intel do
      url "https://github.com/aggrega-ai/aggrega-cli/releases/download/v0.10.0/aggrega-0.10.0-linux-amd64"
      sha256 "ad6e9df449a358d7123d0b936c2fadc2b4a570eb0fe7964711c023b872632420"
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
