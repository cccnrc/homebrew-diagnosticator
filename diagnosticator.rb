class Diagnosticator < Formula
  desc "Diagnosticator Mac OS homebrew package"
  homepage "https://diagnosticator.com"
  url "https://github.com/cccnrc/diagnosticator-mac/archive/refs/tags/v0.1.10.tar.gz"
  sha256 "4508767be75503ab5776005fbe4153b313f2662ec42296b6d5f65e2fd5f08677"
  license "MIT"

  depends_on "docker"
  depends_on "docker-compose"
  depends_on "wget"
  depends_on "jq"

  def install
    bin.install "diagnosticator"
    bin.install "diagnosticator-mac.sh"
    bin.install Dir["files"]
    prefix.install "README.md"
  end
end
