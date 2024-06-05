###
# This file is autogenerated from https://github.com/buildpacks/pack/tree/main/.github/workflows/delivery/homebrew/
# Changes should be committed there. 
###
class Pack < Formula
  desc "A CLI for building apps using Cloud Native Buildpacks"
  homepage "https://github.com/buildpacks/pack"
  version "0.34.2"
  version_scheme 1

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/buildpacks/pack/releases/download/v0.34.2/pack-v0.34.2-macos-arm64.tgz"
    sha256 "f906e90656c5d158f337514dc4903c5a2b2d649cac54f21db1b241e59ad48234"
  elsif OS.mac?
    url "https://github.com/buildpacks/pack/releases/download/v0.34.2/pack-v0.34.2-macos.tgz"
    sha256 "670c4ba13153b1c6f67da1604d2f9c86d8af03a7341a09d3be40d65f22bf7293"
  else 
    url "https://github.com/buildpacks/pack/releases/download/v0.34.2/pack-v0.34.2-linux.tgz"
    sha256 "7c277c30850ae935eaf113db0762b5bf688c22a1fc519ed979f8a2b48e560a1c"
  end

  def install
    bin.install "pack"
  end
end
