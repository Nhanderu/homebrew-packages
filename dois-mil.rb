class DoisMil < Formula
  desc "2048 in the terminal!"
  homepage "https://github.com/Nhanderu/dois-mil"
  url "https://github.com/Nhanderu/dois-mil/archive/v1.0.2.tar.gz"
  sha256 "83c38ef42fa0b25834d9efc2815d7dcce5632aebd7448dd774d22f76cef61d48"
  license "Unlicense"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/dois-mil", "version"
  end
end
