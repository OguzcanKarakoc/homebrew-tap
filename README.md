# Homebrew Tap for Tutorly

[Tutorly](https://github.com/OguzcanKarakoc/tutorly) — an AI tutor that writes every course on the fly.

## Install

```sh
brew install --cask oguzcankarakoc/tap/tutorly
```

Tutorly isn't code-signed/notarized yet, so on first launch macOS may say the
app is "damaged" or "can't be verified". Clear the quarantine flag once, then
open it normally:

```sh
xattr -dr com.apple.quarantine /Applications/Tutorly.app
```

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
