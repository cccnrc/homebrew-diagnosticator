class Diagnosticator < Formula
  desc "Diagnosticator Mac OS homebrew package"
  homepage "https://diagnosticator.com"
  url "https://github.com/cccnrc/diagnosticator-mac/archive/refs/tags/v0.1.5.tar.gz"
  sha256 "62ce220ed6c5b43a94f1d6eae6a970e19d558334ab180bdae642cd880c4244f6"
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
