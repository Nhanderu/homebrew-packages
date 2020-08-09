class Dioni < Formula
  desc "Real random for Spotify!"
  homepage "https://github.com/Nhanderu/dioni"
  url "https://github.com/Nhanderu/dioni/archive/v1.2.1.tar.gz"
  sha256 "a9b5c70145431dcee56ab319f793498401eae944c3af4e68485018f58fc88c10"
  license "Unlicense"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/dioni", "--version"
  end
end
