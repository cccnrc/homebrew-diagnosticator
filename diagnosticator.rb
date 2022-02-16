class Diagnosticator < Formula
  desc "Diagnosticator Mac OS package"
  homepage "https://diagnosticator.com"
  url "https://github.com/cccnrc/diagnosticator-mac/archive/refs/tags/v0.1.2.tar.gz"
  sha256 "27e8cbdfee22284f5295c9f7da7842a27fcb84fcdd0d6521e117f99a070a1885"
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
