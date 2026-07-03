cask "tutorly" do
  version "1.1.0"
  sha256 "eb08e2b0dfb8c317abfa5ae5d9138c22bf0393c9a6859f7bcfe089e1732a98cc"

  url "https://github.com/OguzcanKarakoc/tutorly/releases/download/v#{version}/Tutorly-#{version}-mac-arm64.dmg"
  name "Tutorly"
  desc "AI tutor that writes every course on the fly"
  homepage "https://github.com/OguzcanKarakoc/tutorly"

  # Intel builds aren't published yet; guard so x64 Macs get a clear message
  # instead of an arm64 app that won't launch.
  depends_on arch: :arm64
  depends_on macos: :big_sur

  app "Tutorly.app"

  zap trash: "~/Library/Application Support/Tutorly"

  caveats <<~EOS
    Tutorly is not yet code-signed or notarized, so macOS may block it on first
    launch ("damaged" / "cannot verify"). If that happens, clear the quarantine
    flag once, then open it normally:

      xattr -dr com.apple.quarantine "#{appdir}/Tutorly.app"
  EOS
end
