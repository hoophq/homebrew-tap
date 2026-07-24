class Alcatraz < Formula
  desc "Known-pattern PII detection CLI - in-process, no service, no network"
  homepage "https://github.com/hoophq/alcatraz"
  version "0.7.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/hoophq/alcatraz/releases/download/v0.7.0/alcatraz_0.7.0_darwin_arm64.tar.gz"
      sha256 "0e1374791a0b1c8860fa38d1748d8e27156f3d1e24c48e1f2d0e2771ea100ac9"
    end
    on_intel do
      url "https://github.com/hoophq/alcatraz/releases/download/v0.7.0/alcatraz_0.7.0_darwin_amd64.tar.gz"
      sha256 "543d2ec905efa856cb439751e4c58fe79b956a1c27f3e1cefc8306f20d78e8ff"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/hoophq/alcatraz/releases/download/v0.7.0/alcatraz_0.7.0_linux_arm64.tar.gz"
      sha256 "47c72b534d17e55311915dad1b6723f7e3da95009216255ea873a3c414fa11c0"
    end
    on_intel do
      url "https://github.com/hoophq/alcatraz/releases/download/v0.7.0/alcatraz_0.7.0_linux_amd64.tar.gz"
      sha256 "41f3662d26e502f016c50f691afd3c4c254e1d7ebcecf7802db9311e50a2f25d"
    end
  end

  def install
    bin.install "alcatraz"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alcatraz version")
  end
end
