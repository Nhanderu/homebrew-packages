class Gridt < Formula
  desc "Display contents as a grid in the terminal!"
  homepage "https://github.com/Nhanderu/gridt"
  url "https://github.com/Nhanderu/gridt/archive/v2.0.0.tar.gz"
  sha256 "58ed295162c9c06dcfc54cd21ec725819e94b6ceaf427049398677ff75605794"
  license "Unlicense"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args, "./cmd/gridt/main.go"
  end

  test do
    system "#{bin}/gridt", "--version"
  end
end
