cask "arklike" do
  version "0.4.3"
  sha256 "729096f84c414e9a6365f44a73eff2e8f0dea31ce0a249a98e81146701cdb37f"

  url "https://github.com/CarterMcAlister/arklike/releases/download/v#{version}/Arklike-#{version}.zip"
  name "Arklike"
  desc "Arc-style Safari workflows for macOS"
  homepage "https://github.com/CarterMcAlister/arklike"

  depends_on macos: ">= :sonoma"

  app "Arklike.app"

  uninstall quit: "com.arklike.app",
            login_item: "Arklike"

  zap trash: [
    "~/Library/Preferences/com.arklike.app.plist",
  ]
end
