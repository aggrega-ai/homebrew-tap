# Written by every Aggrega release from packaging/homebrew/aggrega.rb.in in
# https://github.com/aggrega-ai/aggrega-cli; a change made here is replaced by
# the next release.
class Aggrega < Formula
  desc "Deterministic ahead-of-time compiler for deployment artifacts"
  homepage "https://aggrega.ai"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/aggrega-ai/aggrega-cli/releases/download/v0.8.10/aggrega-0.8.10-darwin-arm64"
      sha256 "73e7525936c11d159060e22b1da5f22a4c28731a55b1b3d58b316c7ffcede65b"
    end
    on_intel do
      url "https://github.com/aggrega-ai/aggrega-cli/releases/download/v0.8.10/aggrega-0.8.10-darwin-amd64"
      sha256 "ac2e76998553d2e2431977786fa1b99bcbafb57aea8f09135b592d974cae1f7b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/aggrega-ai/aggrega-cli/releases/download/v0.8.10/aggrega-0.8.10-linux-arm64"
      sha256 "e70cbdfd05662e543c757d486e15445d5b0368eb63ce65ccc761d63378350e22"
    end
    on_intel do
      url "https://github.com/aggrega-ai/aggrega-cli/releases/download/v0.8.10/aggrega-0.8.10-linux-amd64"
      sha256 "6b1fb125fe24edfcc12a61d0fbadd423c920b0fda175edf3a5fd5d04984c92c5"
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
