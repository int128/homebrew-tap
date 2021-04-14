class KubectlExternalForward < Formula
  desc "kubectl plugin to connect to external host via Kubernetes cluster"
  homepage "https://github.com/int128/kubectl-external-forward"
  version "v0.5.0"

  on_macos do
    url "https://github.com/int128/kubectl-external-forward/releases/download/v0.5.0/kubectl-external_forward_darwin_amd64.zip"
    sha256 "7fc7ff441a81b0bb6c652ec935a4c3acfb28751dda0510562bcc4808b891a0d6"
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
