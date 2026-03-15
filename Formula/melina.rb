class Melina < Formula
  desc "Claude Code process monitor — track sessions, teammates, MCP servers, and orphans"
  homepage "https://github.com/vinhnxv/melina"
  version "0.3.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/vinhnxv/melina/releases/download/v0.3.3/melina-v0.3.3-aarch64-apple-darwin.tar.gz"
      sha256 "5696859037f78ffc34959633dac921ce7f465de52acda8ffc7d596c5da15ff80"
    end
    on_intel do
      url "https://github.com/vinhnxv/melina/releases/download/v0.3.3/melina-v0.3.3-x86_64-apple-darwin.tar.gz"
      sha256 "d3ed69990b990173c7ae14dc869775a0fcb45402a4de0dea755397565224136b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/vinhnxv/melina/releases/download/v0.3.3/melina-v0.3.3-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3aa0ff4fc443404d5939b2029cbb15dfb91cb81792bb168c42681a6c6646b153"
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
