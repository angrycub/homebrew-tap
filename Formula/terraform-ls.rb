# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class TerraformLs < Formula
  desc "Terraform Language Server"
  homepage "https://github.com/hashicorp/terraform-ls"
  version "0.27.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.hashicorp.com/terraform-ls/0.27.0/terraform-ls_0.27.0_darwin_arm64.zip"
      sha256 "0070c061d31c1119688d9b770982fe31362d3c0fcaa36e6712c902e217af5509"

      def install
        bin.install "terraform-ls"
      end
    end
    if Hardware::CPU.intel?
      url "https://releases.hashicorp.com/terraform-ls/0.27.0/terraform-ls_0.27.0_darwin_amd64.zip"
      sha256 "2e88dadd8a1667b9716a3ca6e3b12a11b022e086b34ccdacce1927929a081434"

      def install
        bin.install "terraform-ls"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://releases.hashicorp.com/terraform-ls/0.27.0/terraform-ls_0.27.0_linux_arm64.zip"
      sha256 "779cdb9a9cafaf883bc99f0d6735810c49fa326444d45bc27e972ea15613c41f"

      def install
        bin.install "terraform-ls"
      end
    end
    if Hardware::CPU.intel?
      url "https://releases.hashicorp.com/terraform-ls/0.27.0/terraform-ls_0.27.0_linux_amd64.zip"
      sha256 "81e1f902b325db4d35f3db2b7e36a22a203785add003a16957d016e8210ccd26"

      def install
        bin.install "terraform-ls"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://releases.hashicorp.com/terraform-ls/0.27.0/terraform-ls_0.27.0_linux_arm.zip"
      sha256 "5fd532d4988f45e0632fbda610900dc6a2ba6cd83f48200c88d9eafe681aeea3"

      def install
        bin.install "terraform-ls"
      end
    end
  end

  conflicts_with "terraform-ls"

  test do
    system "#{bin}/terraform-ls --version"
  end
end
