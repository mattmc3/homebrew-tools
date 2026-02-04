class Pather < Formula
  desc "PATH management tool"
  homepage "https://github.com/mattmc3/pather"
  url "https://github.com/mattmc3/pather/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "7bb7282796e84c0fcdd24bebccc554fdf784e0e82a9b6d605add6a7ea4d2b5c2"
  license "MIT"

  depends_on "lua"

  def install
    bin.install "pather"
  end

  test do
    assert_match "pather", shell_output("#{bin}/pather --version")
  end
end
