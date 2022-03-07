class KubectlExternalForward < Formula
  desc "kubectl plugin to connect to external host via Kubernetes cluster"
  homepage "https://github.com/int128/kubectl-external-forward"
  version "v0.5.0"

  on_macos do
    url "https://github.com/int128/kubectl-external-forward/archive/v0.5.1.tar.gz"
    sha256 "9703dd41b18c80d74c6eb908cd6797255c4f30521b4c7f160502c2adea4b18d2"
  end
  on_linux do
    url "https://github.com/int128/kubectl-external-forward/releases/download/v0.5.0/kubectl-external_forward_linux_amd64.zip"
    sha256 "8877036ef63408a09537cf61672073b06c144d1a2d6e4552b3f19887cd311105"
  end

  def install
    bin.install "kubectl-external_forward"
  end

  test do
    system "#{bin}/kubectl-external_forward -h"
  end
end
