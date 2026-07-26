class VycorCppAT21 < Formula
  desc "Clang LibTooling backend for C++ static analysis (LLVM 21 build)"
  homepage "https://github.com/bearbones/vycor-cpp"
  url "https://github.com/bearbones/vycor-cpp/releases/download/v0.2.0/vycor-cpp-v0.2.0-macos-arm64-llvm21.tar.gz"
  sha256 "fcffc0d9e475d24151faacc3c5f33938028a75847768212330a5628f7e25ec2b"
  version "0.2.0"
  license "Apache-2.0"
  depends_on "llvm@21"
  depends_on arch: :arm64

  def install
    bin.install "bin/vycor-cpp"
  end

  test do
    assert_match "vycor-cpp version #{version}", shell_output("#{bin}/vycor-cpp --version")
  end
end
