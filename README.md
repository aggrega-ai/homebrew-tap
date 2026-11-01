# homebrew-tap

This repository holds the [Homebrew](https://brew.sh) tap for [Aggrega](https://aggrega.ai): the formula that installs the `aggrega` binary on macOS and Linux.

## Install

```bash
brew install aggrega-ai/tap/aggrega
```

Homebrew adds the `aggrega-ai/tap` tap the first time and installs the binary for your system and processor: macOS on Apple silicon or on Intel, Linux on 64-bit x86 or on 64-bit ARM. The binary is downloaded from the Aggrega release on GitHub and checked against the SHA-256 digest the formula gives it. After a new release, `brew upgrade` updates it, with every other formula you installed.

Homebrew installs into its own folders, and updates only the copy it installed. Use one way of installing Aggrega on a machine: [Install](https://aggrega.ai/docs/install/#install-with-a-package-manager) describes the others.

## Where these files come from

`Formula/aggrega.rb` is written by every Aggrega release, from a template in [aggrega-ai/aggrega-cli](https://github.com/aggrega-ai/aggrega-cli), and names that release's binaries and their digests. Do not edit it by hand: the next release replaces it. A change to the formula is made to the template there.
