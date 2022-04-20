class NomadAutoscaler < Formula
  desc "Nomad Autoscaler"
  homepage "https://github.com/hashicorp/nomad-autoscaler"
  version "0.3.6"

  if OS.mac?
    url "https://releases.hashicorp.com/nomad-autoscaler/0.3.6/nomad-autoscaler_0.3.6_darwin_amd64.zip"
    sha256 "beb01cb474d926a18c9ff3d5c39730e70cc275ebbb009df19967532164ddcacd"
  end

  if OS.mac? && Hardware::CPU.arm?
    def caveats
      <<~EOS
        The darwin_arm64 architecture is not supported for this product
        at this time, however we do plan to support this in the future. The
        darwin_amd64 binary has been installed and may work in
        compatibility mode, but it is not fully supported.
      EOS
    end
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://releases.hashicorp.com/nomad-autoscaler/0.3.6/nomad-autoscaler_0.3.6_linux_amd64.zip"
    sha256 "2f3a55078f2c993a751b9e644dd07573ee2183871f21274159d5c7e4860f6421"
  end

  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://releases.hashicorp.com/nomad-autoscaler/0.3.6/nomad-autoscaler_0.3.6_linux_arm.zip"
    sha256 "03f83a1e3ab7a2fb76c0e26e7c26703d5910d89f429f90359cb46ea97789b22b"
  end

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://releases.hashicorp.com/nomad-autoscaler/0.3.6/nomad-autoscaler_0.3.6_linux_arm64.zip"
    sha256 "1cb5a0e77bb001c2f6951980b1f6ab2b34ab630f72236e7bd9066c4846c3146d"
  end

  conflicts_with "nomad-autoscaler"

  def install
    bin.install "nomad-autoscaler"
  end

  test do
    system "#{bin}/nomad-autoscaler --version"
  end
end
