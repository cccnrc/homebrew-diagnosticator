class Diagnosticator < Formula
  desc "Diagnosticator Mac OS package"
  homepage "https://diagnosticator.com"
  url "https://github.com/cccnrc/diagnosticator-mac/archive/refs/tags/v0.1.4.tar.gz"
  sha256 "b1e644ed5c22c5ee88485b8dcbf45d9b88d9103eba835c49a035ccb55adc776c"
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
