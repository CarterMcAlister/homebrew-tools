cask "arklike" do
  version "0.4.2"
  sha256 "4bc5fae2071a87a271e5381b52bf46118209037975ca5598d3441ed355f782c2"

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
