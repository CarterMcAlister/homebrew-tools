cask "arklike" do
  version "0.3.2"
  sha256 "4e1b6a1ec93be9a8f3f9f8114032b281599c1b0b0a85b8b5509d5f3d0fff9c8e"

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
