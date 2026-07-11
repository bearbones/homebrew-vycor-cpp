class VycorCppAT18 < Formula
  desc "Clang LibTooling backend for C++ static analysis (LLVM 18 build)"
  homepage "https://github.com/bearbones/vycor-cpp"
  url "https://github.com/bearbones/vycor-cpp/releases/download/v0.1.0/vycor-cpp-v0.1.0-macos-arm64-llvm18.tar.gz"
  sha256 "316d5fbcec52107c68022be22986b57feef17a6f78e42df201ddcfa1d8286441"
  version "0.1.0"
  license "Apache-2.0"
  depends_on "llvm@18"
  depends_on arch: :arm64

  def install
    bin.install "bin/vycor-cpp"
  end

  test do
    assert_match "vycor-cpp version #{version}", shell_output("#{bin}/vycor-cpp --version")
  end
end
