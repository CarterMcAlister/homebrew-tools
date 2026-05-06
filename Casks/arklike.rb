cask "arklike" do
  version "0.2.0"
  sha256 "75753e704e63f29c8cae184955d90ebbe084138f4f8ee6d49a5b5d6cd248fe93"

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
