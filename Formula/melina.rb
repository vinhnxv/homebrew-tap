class Melina < Formula
  desc "Claude Code process monitor — track sessions, teammates, MCP servers, and orphans"
  homepage "https://github.com/vinhnxv/melina"
  version "0.3.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/vinhnxv/melina/releases/download/v0.3.2/melina-v0.3.2-aarch64-apple-darwin.tar.gz"
      sha256 "61bf9a8d3a9177dd291aa190d5f7814358a3d344afae7fffb07917b5248ff43e"
    end
    on_intel do
      url "https://github.com/vinhnxv/melina/releases/download/v0.3.2/melina-v0.3.2-x86_64-apple-darwin.tar.gz"
      sha256 "895e1613ac7fcbd681e5cd364b216b295d8db57d15b1a16af15123216a7c7468"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/vinhnxv/melina/releases/download/v0.3.2/melina-v0.3.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8a2b36a8e15a4216991a110f5061d2fb1b5a40258b88d2136eeee3182999af92"
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
