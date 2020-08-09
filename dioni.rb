class Dioni < Formula
  desc "Real random for Spotify!"
  homepage "https://github.com/Nhanderu/dioni"
  url "https://github.com/Nhanderu/dioni/archive/v1.2.0.tar.gz"
  sha256 "3c2b4cfbaeb446a6edb1543d6275ab6a2be3b2901d2ec686fcae99ced4b9d9fe"
  license "Unlicense"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/dioni", "--version"
  end
end
