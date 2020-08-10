class Dioni < Formula
  desc "Real random for Spotify!"
  homepage "https://github.com/Nhanderu/dioni"
  url "https://github.com/Nhanderu/dioni/archive/v1.2.2.tar.gz"
  sha256 "5f87879e0224eed868b713ba6baddbadf70284a838316a3b1dfd1d065ca43c3a"
  license "Unlicense"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/dioni", "--version"
  end
end
