# Homebrew Tap for Tutorly

[Tutorly](https://github.com/OguzcanKarakoc/tutorly) — an AI tutor that writes every course on the fly.

## Install

```sh
brew install --cask --no-quarantine oguzcankarakoc/tap/tutorly
```

`--no-quarantine` is required for now: Tutorly isn't code-signed/notarized yet,
so without it macOS reports the app as "damaged" and refuses to open it. The flag
tells Homebrew not to attach the quarantine flag, so the app opens normally.

> Apple Silicon (M-series) only at the moment. An Intel build will be added once
> it's published.

## Update

```sh
brew upgrade --cask tutorly
```

## Uninstall

```sh
brew uninstall --cask tutorly          # remove the app
brew uninstall --zap --cask tutorly    # also remove local data/settings
```
