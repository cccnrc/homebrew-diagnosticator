class Diagnosticator < Formula
  desc "Diagnosticator Mac OS package"
  homepage "https://diagnosticator.com"
  url "https://github.com/cccnrc/diagnosticator-mac/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "3289d3f016ffd6799f802cf2d45c8913457923dad4c1788ce6af917cf38527ba"
  license "MIT"

  depends_on "docker"
  depends_on "docker-compose"
  depends_on "wget"
  depends_on "jq"

  def install
    bin.install diagnosticator
    bin.install diagnosticator-mac.sh
    bin.install Dir["files"]
    prefix.install "README.md"
  end
end
