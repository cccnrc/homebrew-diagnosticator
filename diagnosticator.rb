class Diagnosticator < Formula
  desc "Diagnosticator Mac OS homebrew package"
  homepage "https://diagnosticator.com"
  url "https://github.com/cccnrc/diagnosticator-mac/archive/refs/tags/v0.1.8.tar.gz"
  sha256 "f5bb745b857a5a8f409ba5980f86a65f32673d40e41d3ae29a8d887dbd727cc1"
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
