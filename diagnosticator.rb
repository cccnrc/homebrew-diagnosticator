class Diagnosticator < Formula
  desc "Diagnosticator Mac OS homebrew package"
  homepage "https://diagnosticator.com"
  url "https://github.com/cccnrc/diagnosticator-mac/archive/refs/tags/v0.1.13.tar.gz"
  sha256 "8f3eae85ff9b88413ae91597431bbaf04ee2f88c169f14aa785b42de492e3d21"
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
