class Dioni < Formula
  desc "Real random for Spotify!"
  homepage "https://github.com/Nhanderu/dioni"
  url "https://github.com/Nhanderu/dioni/archive/v1.0.1.tar.gz"
  sha256 "3a77dd2400d73036199e25ed92be333c6d756324d4bc1420b37e2938588a649a"
  license "Unlicense"

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--locked", "--root", prefix, "--path", "."  
  end

  test do
    system "true"
  end
end
