cask "arklike" do
  version "0.3.1"
  sha256 "449ee6213143775ebf945b5a8be40f25c622f71be78e66135ebb515d4968c75b"

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
