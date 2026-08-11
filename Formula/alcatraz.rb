class Alcatraz < Formula
  desc "Known-pattern PII detection CLI - in-process, no service, no network"
  homepage "https://github.com/hoophq/alcatraz"
  version "0.16.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/hoophq/alcatraz/releases/download/v0.16.0/alcatraz_0.16.0_darwin_arm64.tar.gz"
      sha256 "09cf614c1b35bcddf7899e21ec1d52f3b3d48f359865128af847f5a95d43e39d"
    end
    on_intel do
      url "https://github.com/hoophq/alcatraz/releases/download/v0.16.0/alcatraz_0.16.0_darwin_amd64.tar.gz"
      sha256 "5aa1f204905bf467341bdc1bdb0fd2fd8db436b26bae47a4fd9b23a1ffd0e961"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/hoophq/alcatraz/releases/download/v0.16.0/alcatraz_0.16.0_linux_arm64.tar.gz"
      sha256 "783b53b7e26ea792d21d9912ad3f2e6c478ac4e2eb4c2dbba935a0a1fa2e0090"
    end
    on_intel do
      url "https://github.com/hoophq/alcatraz/releases/download/v0.16.0/alcatraz_0.16.0_linux_amd64.tar.gz"
      sha256 "238ee65a14a139d0649a7255e1d148139da4f65d4ab554f03b8c1b93f2eac721"
    end
  end

  def install
    bin.install "alcatraz"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alcatraz version")
  end
end
