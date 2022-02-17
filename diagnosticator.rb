class Diagnosticator < Formula
  desc "Diagnosticator Mac OS homebrew package"
  homepage "https://diagnosticator.com"
  url "https://github.com/cccnrc/diagnosticator-mac/archive/refs/tags/v0.1.7.tar.gz"
  sha256 "293a6813b65bfeec7657b9a7cc833193457043df5cb41ab7eb2eab3d3a220ca6"
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
