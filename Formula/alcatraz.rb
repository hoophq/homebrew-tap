class Alcatraz < Formula
  desc "Known-pattern PII detection CLI - in-process, no service, no network"
  homepage "https://github.com/hoophq/alcatraz"
  version "0.20.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/hoophq/alcatraz/releases/download/v0.20.2/alcatraz_0.20.2_darwin_arm64.tar.gz"
      sha256 "d1291b54a1ec300ec4f77ce94f527d970aa33b03066a520268a11ab83fc0dced"
    end
    on_intel do
      url "https://github.com/hoophq/alcatraz/releases/download/v0.20.2/alcatraz_0.20.2_darwin_amd64.tar.gz"
      sha256 "dc2f050c1d345d73fc05707580706a4d675e846fcf709d111ff895b49c44bdfa"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/hoophq/alcatraz/releases/download/v0.20.2/alcatraz_0.20.2_linux_arm64.tar.gz"
      sha256 "1e30b2d186e37aa61003059ecf1391bc67ea799010c48ce3e0b9308ba247244f"
    end
    on_intel do
      url "https://github.com/hoophq/alcatraz/releases/download/v0.20.2/alcatraz_0.20.2_linux_amd64.tar.gz"
      sha256 "04176e4317be927da42107ae439800f9c745438c9c41f4bc2ed770bbc227e595"
    end
  end

  def install
    bin.install "alcatraz"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alcatraz version")
  end
end
