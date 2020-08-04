class DoisMil < Formula
  desc "2048 in the terminal!"
  homepage "https://github.com/Nhanderu/dois-mil"
  url "https://github.com/Nhanderu/dois-mil/archive/v1.0.1.tar.gz"
  sha256 "cc51a84f061600c9157e5216fbb6da2eae81ae0cfe2750ead3d4da01d452bc05"
  license "Unlicense"

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--locked", "--root", prefix, "--path", "."
  end

  test do
    system "#{bin}/dois-mil", "version"
  end
end
