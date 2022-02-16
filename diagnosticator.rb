class Diagnosticator < Formula
  desc "Diagnosticator Mac OS package"
  homepage "https://diagnosticator.com"
  url "https://github.com/cccnrc/diagnosticator-mac/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "4d595e8de02feffb32ca036c8813e8de69d1ee50ce2df56210fe6a17c45a651d"
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
