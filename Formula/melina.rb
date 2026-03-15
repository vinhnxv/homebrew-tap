class Melina < Formula
  desc "Claude Code process monitor — track sessions, teammates, MCP servers, and orphans"
  homepage "https://github.com/vinhnxv/melina"
  version "0.4.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/vinhnxv/melina/releases/download/v0.4.0/melina-v0.4.0-aarch64-apple-darwin.tar.gz"
      sha256 "c7ae7db2a97211511a4da160520680d550567e36c61f820b408f37c1e1aa3c6a"
    else
      url "https://github.com/vinhnxv/melina/releases/download/v0.4.0/melina-v0.4.0-x86_64-apple-darwin.tar.gz"
      sha256 "46e4c652aa60536f30daa53a2fc7f4a95214a594d3de41bfb7f084d16078da3e"
    end
  end

  on_linux do
    url "https://github.com/vinhnxv/melina/releases/download/v0.4.0/melina-v0.4.0-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "4c591a28e2a317329d46a19bd3a73464dabb20e769da985087789a3dbb317af3"
  end

  def install
    bin.install "melina"
    bin.install "melina-cli"
  end

  test do
    system bin/"melina-cli", "--help"
  end
end
