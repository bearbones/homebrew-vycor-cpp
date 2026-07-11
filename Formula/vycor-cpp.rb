class VycorCpp < Formula
  desc "Clang LibTooling backend for C++ static analysis (LLVM 21 build)"
  homepage "https://github.com/bearbones/vycor-cpp"
  url "https://github.com/bearbones/vycor-cpp/releases/download/v0.1.0/vycor-cpp-v0.1.0-macos-arm64-llvm21.tar.gz"
  sha256 "66c5ff369c78d5723fd7f0392cd7737f08851002cafe19f2b26865a514a91184"
  version "0.1.0"
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
