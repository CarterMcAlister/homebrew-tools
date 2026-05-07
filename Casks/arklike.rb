cask "arklike" do
  version "0.4.1"
  sha256 "d5317c9b436c696ee33f1302a2bfd28352a7771bbb2916acd27807fc8457fe83"

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
