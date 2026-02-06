class GitCmds < Formula
  desc "Extra commands for git - cloner, browse, whoami, and more"
  homepage "https://github.com/mattmc3/git-cmds"
  head "https://github.com/mattmc3/git-cmds.git", branch: "main"
  license "MIT"

  def install
    bin.install Dir["bin/git-*"]
  end

  test do
    assert_match "git-cloner", shell_output("#{bin}/git-cloner --version")
  end
end
