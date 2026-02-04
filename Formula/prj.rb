class Prj < Formula
  desc "Project jumper - quickly navigate to your Git projects"
  homepage "https://github.com/mattmc3/prj"
  url "https://github.com/mattmc3/prj/archive/refs/tags/v1.0.2.tar.gz"
  sha256 "21ff6d9741215dcebdf24ffe38398ae0d0528cec716f3173fd4c4da66705db41"
  license "MIT"

  depends_on "fd"
  depends_on "fzf"

  def install
    bin.install "prj"
  end

  test do
    assert_match "prj ver", shell_output("#{bin}/prj -v")
  end
end
