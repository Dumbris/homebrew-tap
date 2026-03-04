class McZig < Formula
  desc "Fast Midnight Commander clone built in Zig"
  homepage "https://github.com/Dumbris/mc-zig"
  version "0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Dumbris/mc-zig/releases/download/v0.2.0/mc-aarch64-macos.tar.gz"
      sha256 "56ee0e7077f652d77087f97a034e3b343852c94ae6530d27a8f349b1b4628b59"
    else
      url "https://github.com/Dumbris/mc-zig/releases/download/v#{version}/mc-x86_64-macos.tar.gz"
      sha256 "PLACEHOLDER"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Dumbris/mc-zig/releases/download/v#{version}/mc-aarch64-linux.tar.gz"
      sha256 "PLACEHOLDER"
    else
      url "https://github.com/Dumbris/mc-zig/releases/download/v#{version}/mc-x86_64-linux.tar.gz"
      sha256 "PLACEHOLDER"
    end
  end

  def install
    bin.install "mc"
  end

  test do
    assert_predicate bin/"mc", :executable?
  end
end
