class Congregationtoolboxinstaller < Formula
  desc "Congregation Toolbox installer CLI"
  homepage "https://github.com/VarioCode/congregation-toolbox"
  version "0.0.3"
  license "GPL-3.0-only"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/VarioCode/congregation-toolbox/releases/download/v0.0.3/congregationtoolboxinstaller-osx-arm64.tar.gz"
      sha256 "32088f5ac6baa08b2f1f3d81303c094871c1c25c5e06218d6aa3d66e08597138"
    else
      url "https://github.com/VarioCode/congregation-toolbox/releases/download/v0.0.3/congregationtoolboxinstaller-osx-x64.tar.gz"
      sha256 "d16887df9dbb3441202d0620c6010ab37c93407175764072c90c481e4f97c88b"
    end
  end

  on_linux do
    url "https://github.com/VarioCode/congregation-toolbox/releases/download/v0.0.3/congregationtoolboxinstaller-linux-x64.tar.gz"
    sha256 "983f1993eddd793a009653be2c1e300215ee199c1e20d85cc17c54a18b85bb1c"
  end

  def install
    bin.install "congregationtoolboxinstaller"
  end

  test do
    system "#{bin}/congregationtoolboxinstaller", "help"
  end
end
