class Gridt < Formula
  desc "Display contents as a grid in the terminal!"
  homepage "https://github.com/Nhanderu/gridt"
  url "https://github.com/Nhanderu/gridt/archive/v2.0.1.tar.gz"
  sha256 "4d71a9c4a7562bc342ec1541611203200acf29d6e309227580c54ccad7df51e2"
  license "Unlicense"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args, "./cmd/gridt/main.go"
  end

  test do
    system "#{bin}/gridt", "--version"
  end
end
