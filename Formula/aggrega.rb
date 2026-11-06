# Written by every Aggrega release from packaging/homebrew/aggrega.rb.in in
# https://github.com/aggrega-ai/aggrega-cli; a change made here is replaced by
# the next release.
class Aggrega < Formula
  desc "Deterministic ahead-of-time compiler for deployment artifacts"
  homepage "https://aggrega.ai"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/aggrega-ai/aggrega-cli/releases/download/v0.8.11/aggrega-0.8.11-darwin-arm64"
      sha256 "c5df212a17b32ceba83901f64a3f132711bc51cf704a9d68c91a32adfb7496d8"
    end
    on_intel do
      url "https://github.com/aggrega-ai/aggrega-cli/releases/download/v0.8.11/aggrega-0.8.11-darwin-amd64"
      sha256 "bb383fc52d0bd88c07e90422d1e012d8aeb91240de1c8ea54af8c3dbf55c3439"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/aggrega-ai/aggrega-cli/releases/download/v0.8.11/aggrega-0.8.11-linux-arm64"
      sha256 "bab7e4ebedad3f08525876489477e7d0e1deb16142aa4b567bedaf534cade84c"
    end
    on_intel do
      url "https://github.com/aggrega-ai/aggrega-cli/releases/download/v0.8.11/aggrega-0.8.11-linux-amd64"
      sha256 "61622847a7e00e6a9391868731827b49dc4bfd3a5ed9666411902bd07ab9007e"
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
