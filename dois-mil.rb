class DoisMil < Formula
    desc "2048 in the terminal!"
    homepage "https://github.com/Nhanderu/dois-mil"
    url "https://github.com/Nhanderu/dois-mil/archive/v1.0.0.tar.gz"
    sha256 "a96274be0f33cd3dd2d812436750ce5cb087e7cd860ef893a8d49df309e3c853"
  
    depends_on "rust" => :build
  
    def install
      system "cargo", "install", "--locked", "--root", prefix, "--path", "."
    end
  
    test do
      system "#{bin}/dois-mil", "version"
    end
  end
  