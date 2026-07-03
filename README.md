# Homebrew Tap for Teach

[Teach](https://github.com/OguzcanKarakoc/teach) — an AI tutor that writes every course on the fly.

## Install

```sh
brew install --cask --no-quarantine oguzcankarakoc/tap/teach
```

`--no-quarantine` is required for now: Teach isn't code-signed/notarized yet, so
without it macOS reports the app as "damaged" and refuses to open it. The flag
tells Homebrew not to attach the quarantine flag, so the app opens normally.

> Apple Silicon (M-series) only at the moment. An Intel build will be added once
> it's published.

## Update

```sh
brew upgrade --cask teach
```

## Uninstall

```sh
brew uninstall --cask teach          # remove the app
brew uninstall --zap --cask teach    # also remove local data/settings
```
