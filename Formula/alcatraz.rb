class Alcatraz < Formula
  desc "Known-pattern PII detection CLI - in-process, no service, no network"
  homepage "https://github.com/hoophq/alcatraz"
  version "0.11.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/hoophq/alcatraz/releases/download/v0.11.0/alcatraz_0.11.0_darwin_arm64.tar.gz"
      sha256 "5e5bd33938204cf59af1f087c9e53c2a0936cf0f5b57370b3345caa8bdfdb531"
    end
    on_intel do
      url "https://github.com/hoophq/alcatraz/releases/download/v0.11.0/alcatraz_0.11.0_darwin_amd64.tar.gz"
      sha256 "cebfa0079644168801dc065b288017b6c3390db6d0f5cd2c35dd5cbb53737da1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/hoophq/alcatraz/releases/download/v0.11.0/alcatraz_0.11.0_linux_arm64.tar.gz"
      sha256 "5a78252a07aee977b8b8b5867c67b311833f7589413c3a4f36c5e24ed099136b"
    end
    on_intel do
      url "https://github.com/hoophq/alcatraz/releases/download/v0.11.0/alcatraz_0.11.0_linux_amd64.tar.gz"
      sha256 "42baf11feb0a96058b2023ae5378bf6ad404fb13797c326a84f8b0998f66b10e"
    end
  end

  def install
    bin.install "alcatraz"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alcatraz version")
  end
end
