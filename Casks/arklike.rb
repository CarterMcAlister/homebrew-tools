cask "arklike" do
  version "0.3.0"
  sha256 "6b2c1cb4103bcbef9ac29f820074881e52a44218d4ece7b309df457a5f4f1fe1"

  url "https://github.com/CarterMcAlister/arklike/releases/download/v#{version}/Arklike-#{version}.zip"
  name "Arklike"
  desc "Arc-style Safari workflows for macOS"
  homepage "https://github.com/CarterMcAlister/arklike"

  depends_on macos: ">= :sonoma"

  app "Arklike.app"

  uninstall quit: "com.arklike.app"

  zap trash: [
    "~/Library/Preferences/com.arklike.app.plist",
  ]
end
