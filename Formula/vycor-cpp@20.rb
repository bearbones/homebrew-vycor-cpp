class VycorCppAT20 < Formula
  desc "Clang LibTooling backend for C++ static analysis (LLVM 20 build)"
  homepage "https://github.com/bearbones/vycor-cpp"
  url "https://github.com/bearbones/vycor-cpp/releases/download/v0.3.0/vycor-cpp-v0.3.0-macos-arm64-llvm20.tar.gz"
  sha256 "62d4bdd3dbf80e48eb0a20675b917a802c7ec216c3cb22eed7d93e2e6b93ef49"
  version "0.3.0"
  license "Apache-2.0"
  depends_on "llvm@20"
  depends_on arch: :arm64

  def install
    bin.install "bin/vycor-cpp"
    lib.install Dir["lib/*"] if Dir.exist?("lib")
  end

  test do
    assert_match "vycor-cpp version #{version}", shell_output("#{bin}/vycor-cpp --version")
  end
end
