class VycorCppAT20 < Formula
  desc "Clang LibTooling backend for C++ static analysis (LLVM 20 build)"
  homepage "https://github.com/bearbones/vycor-cpp"
  url "https://github.com/bearbones/vycor-cpp/releases/download/v0.2.0/vycor-cpp-v0.2.0-macos-arm64-llvm20.tar.gz"
  sha256 "84b072d4cb4375492f0bdc4d2c6659e60dd2428e7c993c735446fa035f27b1ea"
  version "0.2.0"
  license "Apache-2.0"
  depends_on "llvm@20"
  depends_on arch: :arm64

  def install
    bin.install "bin/vycor-cpp"
  end

  test do
    assert_match "vycor-cpp version #{version}", shell_output("#{bin}/vycor-cpp --version")
  end
end
