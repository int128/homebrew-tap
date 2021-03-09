class KubectlSocat < Formula
  desc "kubectl plugin to connect to external host via Kubernetes cluster"
  homepage "https://github.com/int128/kubectl-socat"
  version "v0.1.0"

  on_macos do
    url "https://github.com/int128/kubectl-socat/archive/v0.2.0.tar.gz"
    sha256 "01e67ae2638e16bd517952a9cc1231d016d14c5e6269fb8028b4e3f03a19b653"
  end
  on_linux do
    url "https://github.com/int128/kubectl-socat/releases/download/v0.1.0/kubectl-socat_v0.1.0_linux_amd64.zip"
    sha256 "a0862211648202ba80e3c33078ab1c8c2821dc6419e5fa8c496e83500cbfcd34"
  end

  def install
    bin.install "kubectl-socat"
  end

  test do
    system "#{bin}/kubectl-socat -h"
  end
end
