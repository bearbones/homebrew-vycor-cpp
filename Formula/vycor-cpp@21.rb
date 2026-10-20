class VycorCppAT21 < Formula
  desc "Clang LibTooling backend for C++ static analysis (LLVM 21 build)"
  homepage "https://github.com/bearbones/vycor-cpp"
  url "https://github.com/bearbones/vycor-cpp/releases/download/v0.3.0/vycor-cpp-v0.3.0-macos-arm64-llvm21.tar.gz"
  sha256 "21b24e471084aad793da59ca826ff7521af56ee537a2f03edf737f92cb4c7c3c"
  version "0.3.0"
  license "Apache-2.0"
  depends_on "llvm@21"
  depends_on arch: :arm64

  def install
    bin.install "bin/vycor-cpp"
    lib.install Dir["lib/*"] if Dir.exist?("lib")
  end

  test do
    assert_match "vycor-cpp version #{version}", shell_output("#{bin}/vycor-cpp --version")
  end
end
