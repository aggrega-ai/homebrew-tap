# Written by every Aggrega release from packaging/homebrew/aggrega.rb.in in
# https://github.com/aggrega-ai/aggrega-cli; a change made here is replaced by
# the next release.
class Aggrega < Formula
  desc "Deterministic ahead-of-time compiler for deployment artifacts"
  homepage "https://aggrega.ai"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/aggrega-ai/aggrega-cli/releases/download/v0.10.1/aggrega-0.10.1-darwin-arm64"
      sha256 "cb80a5fbc5dd568deda2d00d1af16e22feeea108f1fdf2268f47bdf507da14f9"
    end
    on_intel do
      url "https://github.com/aggrega-ai/aggrega-cli/releases/download/v0.10.1/aggrega-0.10.1-darwin-amd64"
      sha256 "4fc7510e728ab9d794c67a950f38852bff7a0e364c0cd9c981372fad86fced37"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/aggrega-ai/aggrega-cli/releases/download/v0.10.1/aggrega-0.10.1-linux-arm64"
      sha256 "0ea7125fb803f6b87d36feae8272fc27373d6d1732dc39a58edc3b14171977a6"
    end
    on_intel do
      url "https://github.com/aggrega-ai/aggrega-cli/releases/download/v0.10.1/aggrega-0.10.1-linux-amd64"
      sha256 "30cb74c28b0abc3d0278677cf20ffea51ec33a2c7439998cfe5e8738011c1ff2"
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
