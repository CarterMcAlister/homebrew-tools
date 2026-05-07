cask "arklike" do
  version "0.4.0"
  sha256 "d83b7d2dfaf368de3ed5756c11e5580c5ab727c3403c9e2d6248c8e6fa62c42f"

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
