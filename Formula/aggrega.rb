# Written by every Aggrega release from packaging/homebrew/aggrega.rb.in in
# https://github.com/aggrega-ai/aggrega-cli; a change made here is replaced by
# the next release.
class Aggrega < Formula
  desc "Deterministic ahead-of-time compiler for deployment artifacts"
  homepage "https://aggrega.ai"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/aggrega-ai/aggrega-cli/releases/download/v0.10.2/aggrega-0.10.2-darwin-arm64"
      sha256 "ed7347377b049e7ba3bd94c23a3a9317eece245d84f6ce6a481c29351fa50290"
    end
    on_intel do
      url "https://github.com/aggrega-ai/aggrega-cli/releases/download/v0.10.2/aggrega-0.10.2-darwin-amd64"
      sha256 "c85742074ace86c98d598411d5d7e950b8923425ea1c377462f27eecde503cf5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/aggrega-ai/aggrega-cli/releases/download/v0.10.2/aggrega-0.10.2-linux-arm64"
      sha256 "67c670b5609e51e39b0e89cf65cead12bba9a44912f755db5f00645a35290f86"
    end
    on_intel do
      url "https://github.com/aggrega-ai/aggrega-cli/releases/download/v0.10.2/aggrega-0.10.2-linux-amd64"
      sha256 "deff5db1d04a26038ad89e0275e2eef8b8c11eb237857cad2890ac2957b20360"
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
