class Lazysql < Formula
  desc "Cross-platform TUI database management tool written in Go (yuvals1's Version)"
  homepage "https://github.com/yuvals1/lazysql"
  url "https://github.com/yuvals1/lazysql.git", branch: "modify-keybind-for-executing"
  version "0.1.0-yuvals1"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w")
  end

  test do
    assert_match "LAZYSQL", shell_output("#{bin}/lazysql --version")
  end
end
