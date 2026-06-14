# homebrew-openflock

Homebrew tap for [OpenFlock](https://github.com/bobby-oster/openflock) — a macOS
menu-bar dashboard for your fleet of AI coding agents.

## Install

```sh
brew tap bobby-oster/openflock
brew trust bobby-oster/openflock   # Homebrew 6+ requires trusting third-party taps
brew install --cask openflock
```

## First launch

OpenFlock is ad-hoc signed but not yet notarized, so macOS Gatekeeper blocks the
first launch. After installing, clear the quarantine flag:

```sh
xattr -dr com.apple.quarantine /Applications/OpenFlock.app
```

or open it once via **System Settings → Privacy & Security → "Open Anyway"**.

> Homebrew's old `--no-quarantine` flag was removed in Homebrew 5.0 and no longer
> works.

## Uninstall

```sh
brew uninstall --cask openflock
```
