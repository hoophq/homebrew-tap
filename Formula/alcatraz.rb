class Alcatraz < Formula
  desc "Known-pattern PII detection CLI - in-process, no service, no network"
  homepage "https://github.com/hoophq/alcatraz"
  version "0.20.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/hoophq/alcatraz/releases/download/v0.20.1/alcatraz_0.20.1_darwin_arm64.tar.gz"
      sha256 "70fe1a5a4af72339f367641d7884c8d14ea6c349644a7ffa2e4ea78b5435ecfe"
    end
    on_intel do
      url "https://github.com/hoophq/alcatraz/releases/download/v0.20.1/alcatraz_0.20.1_darwin_amd64.tar.gz"
      sha256 "ff8068f715677a9e903a6e8264196ea59e5367024303e06d80b2a456b5754cf6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/hoophq/alcatraz/releases/download/v0.20.1/alcatraz_0.20.1_linux_arm64.tar.gz"
      sha256 "ae6282292db153d6abcb45335ba52742c3833d19e4a4506796e21dbde5666f80"
    end
    on_intel do
      url "https://github.com/hoophq/alcatraz/releases/download/v0.20.1/alcatraz_0.20.1_linux_amd64.tar.gz"
      sha256 "e674dab8306494c3b1838a8b6904279d27d0164dc2bc8abeabe2fac807d5759c"
    end
  end

  def install
    bin.install "alcatraz"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alcatraz version")
  end
end
