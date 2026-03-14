class Melina < Formula
  desc "Claude Code process monitor — track sessions, teammates, MCP servers, and orphans"
  homepage "https://github.com/vinhnxv/melina"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/vinhnxv/melina/releases/download/v0.3.0/melina-v0.3.0-aarch64-apple-darwin.tar.gz"
      sha256 "placeholder"
    end
    on_intel do
      url "https://github.com/vinhnxv/melina/releases/download/v0.3.0/melina-v0.3.0-x86_64-apple-darwin.tar.gz"
      sha256 "placeholder"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/vinhnxv/melina/releases/download/v0.3.0/melina-v0.3.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "placeholder"
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
