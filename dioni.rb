class Dioni < Formula
  desc "Real random for Spotify!"
  homepage "https://github.com/Nhanderu/dioni"
  url "https://github.com/Nhanderu/dioni/archive/v1.0.0.tar.gz"
  sha256 "37a61138151b58636032a13dbc75c9ddab1dd026e49e63cad81a0a54ccfc4ae2"
  license "Unlicense"

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--locked", "--root", prefix, "--path", "."  
  end

  test do
    system "true"
  end
end
