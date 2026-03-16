class Melina < Formula
  desc "Claude Code process monitor — track sessions, teammates, MCP servers, and orphans"
  homepage "https://github.com/vinhnxv/melina"
  version "0.4.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/vinhnxv/melina/releases/download/v0.4.2/melina-v0.4.2-aarch64-apple-darwin.tar.gz"
      sha256 "a9524c2710a88954f8cb68d24e8c351e740d1523607c359a4e1b70ac2bb9b881"
    end
    on_intel do
      url "https://github.com/vinhnxv/melina/releases/download/v0.4.2/melina-v0.4.2-x86_64-apple-darwin.tar.gz"
      sha256 "48694d72bb7479ad0de92947146b36c84009ab6e172cf6528b3dd9c9faa76c95"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/vinhnxv/melina/releases/download/v0.4.2/melina-v0.4.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d1ea04d6afe2f0d516677b437a610113f3f7d3f2505e155222d260c34261684f"
    end
  end

  def install
    bin.install "melina"
    bin.install "melina-cli"
  end

  test do
    assert_match "melina", shell_output("#{bin}/melina-cli --help")
  end
end
