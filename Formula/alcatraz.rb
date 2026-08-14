class Alcatraz < Formula
  desc "Known-pattern PII detection CLI - in-process, no service, no network"
  homepage "https://github.com/hoophq/alcatraz"
  version "0.17.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/hoophq/alcatraz/releases/download/v0.17.0/alcatraz_0.17.0_darwin_arm64.tar.gz"
      sha256 "23d742398de5aa81d2fa305fa7e0d91169e549f10c5ca216401803574aa0260c"
    end
    on_intel do
      url "https://github.com/hoophq/alcatraz/releases/download/v0.17.0/alcatraz_0.17.0_darwin_amd64.tar.gz"
      sha256 "13d6f5d26dc3f972f81ad0ac6b78efb6036e46a6f0baaf28ee2c4a2e8a5ba220"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/hoophq/alcatraz/releases/download/v0.17.0/alcatraz_0.17.0_linux_arm64.tar.gz"
      sha256 "4e3031cd8d823355984d9c2f22aa1e0a60c29f6e0408a8d5e7e4a5642af633df"
    end
    on_intel do
      url "https://github.com/hoophq/alcatraz/releases/download/v0.17.0/alcatraz_0.17.0_linux_amd64.tar.gz"
      sha256 "025ac40038d4bff25d2687867068e72aad549b802c08fbd0b22043165f546a2a"
    end
  end

  def install
    bin.install "alcatraz"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alcatraz version")
  end
end
