class AerospaceLayoutManager < Formula
  desc "Layout manager for AeroSpace window manager"
  homepage "https://github.com/CarterMcAlister/aerospace-layout-manager"
  url "https://github.com/CarterMcAlister/aerospace-layout-manager/archive/refs/tags/0.0.4.tar.gz"
  sha256 "356b7a9e6d3cce1d67ad2cfa6343bdadf91da7e2986c6167dd933cfc08d4c617"
  license "MIT"
  head "https://github.com/CarterMcAlister/aerospace-layout-manager.git", branch: "main"

  depends_on "oven-sh/bun/bun" => :build

  def install
    target = Hardware::CPU.arm? ? "build:mac" : "build:mac-intel"
    system "bun", "run", target

    binary = Hardware::CPU.arm? ? "aerospace-layout-manager-darwin-arm64" : "aerospace-layout-manager-darwin-x64"
    bin.install "build/#{binary}" => "aerospace-layout-manager"
  end

  def caveats
    <<~EOS
      Create your AeroSpace layout config at:
        ~/.config/aerospace/layouts.json
    EOS
  end

  test do
    (testpath/"layouts.json").write <<~JSON
      {
        "$schema": "https://raw.githubusercontent.com/CarterMcAlister/aerospace-layout-manager/main/layoutConfig.schema.json",
        "layouts": {
          "test": []
        }
      }
    JSON

    output = shell_output("#{bin}/aerospace-layout-manager --configFile #{testpath}/layouts.json --listLayouts")
    assert_match "test", output
  end
end
