class KubectlSocat < Formula
  desc "kubectl plugin to connect to external host via Kubernetes cluster"
  homepage "https://github.com/int128/kubectl-socat"
  version "v0.2.0"

  on_macos do
    url "https://github.com/int128/kubectl-socat/archive/v0.3.0.tar.gz"
    sha256 "e9fc5cad4425560a752778e7a3a96afdbe52fd2c2238d27b074f2511e7fe52d9"
  end
  on_linux do
    url "https://github.com/int128/kubectl-socat/releases/download/v0.2.0/kubectl-socat_v0.2.0_linux_amd64.zip"
    sha256 "f121fbfcbc01d893767d7fd31c7f4b62bb1db729ba0cd8eab2f46abec90ffa8e"
  end

  def install
    bin.install "kubectl-socat"
  end

  test do
    system "#{bin}/kubectl-socat -h"
  end
end
