class LaunchctrlTui < Formula
  desc "Terminal UI for inspecting and controlling macOS startup items"
  homepage "https://github.com/CarterMcAlister/launchctrl-tui"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/CarterMcAlister/launchctrl-tui/releases/download/v0.1.0/launchctrl-tui-aarch64-apple-darwin.tar.gz"
      sha256 "4ad0097d3738f8bca9687cc20e9a0278ceda3dca52d47204d7714f87f3c643f0"
    else
      url "https://github.com/CarterMcAlister/launchctrl-tui/releases/download/v0.1.0/launchctrl-tui-x86_64-apple-darwin.tar.gz"
      sha256 "d7ca1056c726464b38b0239039673d73bda8595c47640657afb811c01ff022b9"
    end
  end

  def install
    bin.install "launchctrl-tui"
  end

  test do
    assert_match "launchctrl-tui", shell_output("#{bin}/launchctrl-tui --help")
  end
end
