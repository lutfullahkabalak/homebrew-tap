# Prayer Times Homebrew tap

Developer-maintained Homebrew distribution of [Prayer Times](https://lutfullahkabalak.github.io/prayer-times-for-mac/), a native macOS menu bar app using Diyanet prayer-time data.

Requires macOS 14 Sonoma or later. Supports Intel and Apple Silicon.

## Install

```sh
brew install --cask lutfullahkabalak/tap/prayer-times
```

## Update

The app includes automatic updates through Sparkle. To explicitly update through Homebrew, including casks with automatic updates:

```sh
brew update
brew upgrade --cask --greedy lutfullahkabalak/tap/prayer-times
```

## Uninstall

```sh
brew uninstall --cask prayer-times
```

Optional: `brew uninstall --cask --zap prayer-times` also removes saved settings and cached prayer times.

## Maintain

After publishing a new application release, update `version` and `sha256` in `Casks/prayer-times.rb`. Verify the checksum of the published ZIP and run:

```sh
brew style --cask lutfullahkabalak/tap/prayer-times
brew audit --cask lutfullahkabalak/tap/prayer-times
```

This is a third-party tap maintained by the app developer, not the official Homebrew Cask repository.
