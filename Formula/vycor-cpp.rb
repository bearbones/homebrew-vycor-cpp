class VycorCpp < Formula
  desc "Clang LibTooling backend for C++ static analysis (LLVM 22 build)"
  homepage "https://github.com/bearbones/vycor-cpp"
  url "https://github.com/bearbones/vycor-cpp/releases/download/v0.3.0/vycor-cpp-v0.3.0-macos-arm64-llvm22.tar.gz"
  sha256 "c6665d24832de16e0e19fb46f8fab2e81d662c56ec160b836a91e1dba1c36904"
  version "0.3.0"
  license "Apache-2.0"
  depends_on "llvm@22"
  depends_on arch: :arm64

  def install
    bin.install "bin/vycor-cpp"
    lib.install Dir["lib/*"] if Dir.exist?("lib")
  end

  test do
    assert_match "vycor-cpp version #{version}", shell_output("#{bin}/vycor-cpp --version")
  end
end
