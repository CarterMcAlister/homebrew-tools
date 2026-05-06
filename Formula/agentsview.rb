class Agentsview < Formula
  desc "Local web viewer for AI agent sessions"
  homepage "https://github.com/wesm/agentsview"
  version "0.27.0"
  license "MIT"

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/wesm/agentsview/releases/download/v0.27.0/agentsview_0.27.0_darwin_arm64.tar.gz"
      sha256 "93c21fd7aa352fcc994db0fbf87262cb59e399f683e3ab6c020aaf1ce3bacbab"
    else
      url "https://github.com/wesm/agentsview/releases/download/v0.27.0/agentsview_0.27.0_darwin_amd64.tar.gz"
      sha256 "3166b13a7060e33158a3c586a1789a0a100a8a038f7a2009f7a7a884e9432142"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/wesm/agentsview/releases/download/v0.27.0/agentsview_0.27.0_linux_arm64.tar.gz"
      sha256 "0dc791cec2519dbec5cf98174fccc7e09e4926494a9d26deafc075a894867cd5"
    else
      url "https://github.com/wesm/agentsview/releases/download/v0.27.0/agentsview_0.27.0_linux_amd64.tar.gz"
      sha256 "c4fe5cf636f3c03a89a9ea5e0d8e313b4a468facd4ca61e6f0c7b52ebad5240f"
    end
  end

  def install
    bin.install "agentsview"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agentsview --version")
  end
end
