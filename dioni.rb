class Dioni < Formula
  desc "Real random for Spotify!"
  homepage "https://github.com/Nhanderu/dioni"
  url "https://github.com/Nhanderu/dioni/archive/v1.1.0.tar.gz"
  sha256 "d0bac9c2b8d483439695c2c5b8c190d05478c323d10b74d90b47912b86cbec19"
  license "Unlicense"

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--locked", "--root", prefix, "--path", "."  
  end

  test do
    system "#{bin}/dioni", "--version"
  end
end
