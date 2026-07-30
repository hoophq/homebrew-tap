class Alcatraz < Formula
  desc "Known-pattern PII detection CLI - in-process, no service, no network"
  homepage "https://github.com/hoophq/alcatraz"
  version "0.10.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/hoophq/alcatraz/releases/download/v0.10.0/alcatraz_0.10.0_darwin_arm64.tar.gz"
      sha256 "0c571fdf7087024951c8c25b17654d9fdec5f58312de0cb51d111d96b0e76793"
    end
    on_intel do
      url "https://github.com/hoophq/alcatraz/releases/download/v0.10.0/alcatraz_0.10.0_darwin_amd64.tar.gz"
      sha256 "5a84087d8c4b85b7c9804e452fb57be0da0b9eab5f33259085514db6822a107d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/hoophq/alcatraz/releases/download/v0.10.0/alcatraz_0.10.0_linux_arm64.tar.gz"
      sha256 "6c4f8bf3b745b8325b38fd211df1beeb98de52186a87c2ae2d962b1300aece8e"
    end
    on_intel do
      url "https://github.com/hoophq/alcatraz/releases/download/v0.10.0/alcatraz_0.10.0_linux_amd64.tar.gz"
      sha256 "096ae7fd677b98b7d34269357df0fa7b81eea5d312fb95377522ad4fc4970b1b"
    end
  end

  def install
    bin.install "alcatraz"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alcatraz version")
  end
end
