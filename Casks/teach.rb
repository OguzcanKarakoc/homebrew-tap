cask "teach" do
  version "1.0.1"
  sha256 "f70b1c905eab2ee2c421076e074b1b4ea853de3cf60ca0a02355c6e29ae6f8e8"

  url "https://github.com/OguzcanKarakoc/teach-electron/releases/download/v#{version}/Teach-#{version}-mac-arm64.dmg",
      verified: "github.com/OguzcanKarakoc/teach-electron/"
  name "Teach"
  desc "AI tutor that writes every course on the fly"
  homepage "https://github.com/OguzcanKarakoc/teach-electron"

  # Intel builds aren't published yet; guard so x64 Macs get a clear message
  # instead of an arm64 app that won't launch.
  depends_on arch: :arm64
  depends_on macos: :big_sur

  app "Teach.app"

  zap trash: "~/Library/Application Support/Teach"

  caveats <<~EOS
    Teach is not yet code-signed or notarized. If macOS says the app is
    "damaged", reinstall with --no-quarantine:

      brew install --cask --no-quarantine oguzcankarakoc/tap/teach
  EOS
end
