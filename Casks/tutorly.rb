cask "tutorly" do
  version "1.1.2"
  sha256 "020121c830ea8d70b46fc108f9608feeffea0e042c7a93167c4b6208ec5282ae"

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
