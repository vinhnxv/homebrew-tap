class Melina < Formula
  desc "Claude Code process monitor — track sessions, teammates, MCP servers, and orphans"
  homepage "https://github.com/vinhnxv/melina"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/vinhnxv/melina/releases/download/v0.3.0/melina-v0.3.0-aarch64-apple-darwin.tar.gz"
      sha256 "fc53ed168ec19cf85160c1e6418ff407e515a7b27f1a4d078b23bb9307d9e0af"
    end
    on_intel do
      url "https://github.com/vinhnxv/melina/releases/download/v0.3.0/melina-v0.3.0-x86_64-apple-darwin.tar.gz"
      sha256 "62d5561edc2ca7a54aa4fc319d16f69e2e032424638d0a23f73e4a323bc1bd3e"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/vinhnxv/melina/releases/download/v0.3.0/melina-v0.3.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d4aea29dbffa54915607eb71ad5694c7551aa33935eb677ca4fd5b0cc084aa2d"
    end
  end

  def install
    bin.install "melina"
    bin.install "melina-cli"
  end

  test do
    assert_match "melina-cli", shell_output("#{bin}/melina-cli --version")
  end
end
