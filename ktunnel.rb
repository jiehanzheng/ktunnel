# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Ktunnel < Formula
  desc "Network tunneling tool for kubernetes."
  homepage "https://github.com/omrikiei/ktunnel"
  version "1.6.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/omrikiei/ktunnel/releases/download/v1.6.0/ktunnel_1.6.0_Darwin_arm64.tar.gz"
      sha256 "2ffcd7bb83c17587d8da6c428944aa2fecc294463e0666b397d9ddc05c2922de"

      def install
        bin.install "ktunnel"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/omrikiei/ktunnel/releases/download/v1.6.0/ktunnel_1.6.0_Darwin_x86_64.tar.gz"
      sha256 "c6fbe9a7c219752dbfc465ae9203c3bfa76ebc5751b1237d6cd2ed7ffbd7dc25"

      def install
        bin.install "ktunnel"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/omrikiei/ktunnel/releases/download/v1.6.0/ktunnel_1.6.0_Linux_x86_64.tar.gz"
      sha256 "de3726ad5396fd140c99d1a1f42ae3f498468078fb3790dcb273a9417de8f479"

      def install
        bin.install "ktunnel"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/omrikiei/ktunnel/releases/download/v1.6.0/ktunnel_1.6.0_Linux_arm64.tar.gz"
      sha256 "dbda76e470395d45e5f91f92b4b514c94b268e5ddd69148cda08b356dede86ff"

      def install
        bin.install "ktunnel"
      end
    end
  end

  head "https://github.com/omrikiei/ktunnel.git"

  test do
    system "#{bin}/program version"
  end
end
