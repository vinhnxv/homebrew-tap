class Melina < Formula
  desc "Claude Code process monitor — track sessions, teammates, MCP servers, and orphans"
  homepage "https://github.com/vinhnxv/melina"
  version "0.4.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/vinhnxv/melina/releases/download/v0.4.1/melina-v0.4.1-aarch64-apple-darwin.tar.gz"
      sha256 "cc3d481714bc976c0d7259e11b176fbf982c63ecf58d11d4fc64bcf725049ea8"
    end
    on_intel do
      url "https://github.com/vinhnxv/melina/releases/download/v0.4.1/melina-v0.4.1-x86_64-apple-darwin.tar.gz"
      sha256 "2d262bc5179363a0c61018d149d32175dd87c664150b4e6684c21cd3c72b2adb"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/vinhnxv/melina/releases/download/v0.4.1/melina-v0.4.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e497097b4523fe87fcf77788409f7280e65db869b49b743cb765608251be3e76"
    end
  end

  def install
    bin.install "melina"
    bin.install "melina-cli"
  end

  test do
    system bin/"melina-cli", "--help"
  end
end
