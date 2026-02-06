class GitCmds < Formula
  desc "Extra commands for git - cloner, browse, whoami, and more"
  homepage "https://github.com/mattmc3/git-cmds"
  url "https://github.com/mattmc3/git-cmds/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "f9087b60ec5ccb6ef31bc81ecebb32de6834edaacb618b0af589cd35341ffe13"
  license "MIT"

  head "https://github.com/mattmc3/git-cmds.git", branch: "main"

  def install
    bin.install Dir["bin/git-*"]
  end

  test do
    assert_match "git-cloner", shell_output("#{bin}/git-cloner --version")
  end
end
