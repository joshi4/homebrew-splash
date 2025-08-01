# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Splash < Formula
  desc "Add color to your logs"
  homepage "https://github.com/joshi4/splash"
  version "0.3.0"
  license "MIT"

  on_macos do
    url "https://github.com/joshi4/splash/releases/download/v0.3.0/splash_darwin_all.tar.gz"
    sha256 "6da1e90ac82db4b65fb1c4b4996e9ff675b9071f05d073c729b1edb77da409d6"

    def install
      bin.install "splash"
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/joshi4/splash/releases/download/v0.3.0/splash_linux_x86_64.tar.gz"
      sha256 "6323124caafe9b3d430e2283a991b55a64c871846886506148705d564805c5e4"
      def install
        bin.install "splash"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/joshi4/splash/releases/download/v0.3.0/splash_linux_arm64.tar.gz"
      sha256 "1af08527ab49fbe888f420ccb78a05fbb77ebdc50c863d9079a617df593b8ec7"
      def install
        bin.install "splash"
      end
    end
  end

  test do
    system "#{bin}/splash", "version"
  end
end
