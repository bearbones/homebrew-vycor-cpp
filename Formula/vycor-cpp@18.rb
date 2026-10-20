class VycorCppAT18 < Formula
  desc "Clang LibTooling backend for C++ static analysis (LLVM 18 build)"
  homepage "https://github.com/bearbones/vycor-cpp"
  url "https://github.com/bearbones/vycor-cpp/releases/download/v0.3.0/vycor-cpp-v0.3.0-macos-arm64-llvm18.tar.gz"
  sha256 "e42edc0851960fafbb1d100d8deafd819bb9b3e9d29472931c0d0a9cfabf857a"
  version "0.3.0"
  license "Apache-2.0"
  depends_on "llvm@18"
  depends_on arch: :arm64

  def install
    bin.install "bin/vycor-cpp"
    lib.install Dir["lib/*"] if Dir.exist?("lib")
  end

  test do
    assert_match "vycor-cpp version #{version}", shell_output("#{bin}/vycor-cpp --version")
  end
end
