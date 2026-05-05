cask "arklike" do
  version "0.1.0"
  sha256 "38d14a939e3b3a7d79c1fa2359962f9c1be5eda0439071ec1bb25dc265e15d7c"

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
