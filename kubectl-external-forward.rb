class KubectlExternalForward < Formula
  desc "kubectl plugin to connect to external host via Kubernetes cluster"
  homepage "https://github.com/int128/kubectl-external-forward"
  version "v0.4.0"

  on_macos do
    url "https://github.com/int128/kubectl-external-forward/releases/download/v0.4.0/kubectl-external_forward_darwin_amd64.zip"
    sha256 "91bb5ebef6a143574754ad11d6254d21170e3693005751b79698f3978434b6ea"
  end
  on_linux do
    url "https://github.com/int128/kubectl-external-forward/releases/download/v0.4.0/kubectl-external_forward_linux_amd64.zip"
    sha256 "ecbda3adf9fb35043a672afe65b381690263e1f3e58c0b6c9cfd38c5e3fac818"
  end

  def install
    bin.install "kubectl-socat"
  end

  test do
    system "#{bin}/kubectl-socat -h"
  end
end
