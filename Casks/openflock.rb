cask "openflock" do
  version "0.1.0"
  sha256 "47c96d28b9fdbb8d90ca091aff1b3d36497c4a442e2f6cb3e73062dbcbf337b0"

  url "https://github.com/bobby-oster/openflock/releases/download/v#{version}/OpenFlock-#{version}.zip"
  name "OpenFlock"
  desc "Menu-bar dashboard for your fleet of AI coding agents"
  homepage "https://github.com/bobby-oster/openflock"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "OpenFlock.app"

  caveats <<~EOS
    OpenFlock is ad-hoc signed and not yet notarized, so macOS Gatekeeper blocks
    the first launch. After installing, clear the quarantine flag:

      xattr -dr com.apple.quarantine /Applications/OpenFlock.app

    or open it once via System Settings → Privacy & Security → "Open Anyway".
  EOS

  zap trash: [
    "~/Library/Preferences/ai.openflock.OpenFlock.plist",
    "~/Library/Saved Application State/ai.openflock.OpenFlock.savedState",
  ]
end
