# homebrew-openflock

Homebrew tap for [OpenFlock](https://github.com/bobby-oster/openflock) — a macOS
menu-bar dashboard for your fleet of AI coding agents.

## Install

```sh
brew install --cask bobby-oster/openflock/openflock
```

or, equivalently:

```sh
brew tap bobby-oster/openflock
brew install --cask openflock
```

## First launch

OpenFlock is ad-hoc signed but not yet notarized, so macOS may block the first
launch. Either install without quarantine:

```sh
brew install --cask --no-quarantine openflock
```

or open it once via **System Settings → Privacy & Security → "Open Anyway"**.

## Uninstall

```sh
brew uninstall --cask openflock
```
