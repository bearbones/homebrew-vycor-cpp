# homebrew-vycor-cpp

A [Homebrew](https://brew.sh) tap for [vycor-cpp](https://github.com/bearbones/vycor-cpp),
a Clang LibTooling backend for C++ static analysis and source-to-source
transformation.

This is a self-hosted tap, not a `homebrew/core` submission — no popularity
or notability bar to clear, just `brew tap` it directly.

## Install

```bash
brew tap bearbones/vycor-cpp
brew install vycor-cpp
```

This installs the build matched to whichever LLVM major `vycor-cpp`
currently treats as newest. To pin to a specific LLVM major instead:

```bash
brew install bearbones/vycor-cpp/vycor-cpp@18
# or @20, @21
```

Each formula `depends_on` the matching `llvm@NN` Homebrew formula — this is
a **runtime** dependency, not just a build-time one, since Homebrew's LLVM
formulas link Clang/LLVM as shared libraries.

## Formula updates

`Formula/*.rb` in this repo are updated automatically by
[`vycor-cpp`'s release workflow](https://github.com/bearbones/vycor-cpp/blob/main/.github/workflows/release.yml)
(`.github/workflows/scripts/update-tap-formula.sh`) whenever a version tag is
pushed there. See `vycor-cpp`'s `COMPATIBILITY.md` ("Tagging and releases")
for the release process and tag grammar.
