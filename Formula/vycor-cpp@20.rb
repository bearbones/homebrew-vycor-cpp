class VycorCppAT20 < Formula
  desc "Clang LibTooling backend for C++ static analysis (LLVM 20 build)"
  homepage "https://github.com/bearbones/vycor-cpp"
  url "https://github.com/bearbones/vycor-cpp/releases/download/v0.1.0/vycor-cpp-v0.1.0-macos-arm64-llvm20.tar.gz"
  sha256 "b6fd7a41edf96ba5ee885b39ef5752dadb270cad632cb64e9df1759f827d4970"
  version "0.1.0"
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
