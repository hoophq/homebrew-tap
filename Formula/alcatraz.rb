class Alcatraz < Formula
  desc "Known-pattern PII detection CLI - in-process, no service, no network"
  homepage "https://github.com/hoophq/alcatraz"
  version "0.20.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/hoophq/alcatraz/releases/download/v0.20.0/alcatraz_0.20.0_darwin_arm64.tar.gz"
      sha256 "e87af92ca5a3bd60d1daac60858c948de8c4b928e1323e3960d4766d8ec7c762"
    end
    on_intel do
      url "https://github.com/hoophq/alcatraz/releases/download/v0.20.0/alcatraz_0.20.0_darwin_amd64.tar.gz"
      sha256 "12066de15d568987c2871f60fe894b0a8f90ff0e4b532ebe8a59fb496e3c62e8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/hoophq/alcatraz/releases/download/v0.20.0/alcatraz_0.20.0_linux_arm64.tar.gz"
      sha256 "4c53700edf70367a81f5a70ce10f61ba3ff2d2866ede2f7c5847f31f9b2c2a5a"
    end
    on_intel do
      url "https://github.com/hoophq/alcatraz/releases/download/v0.20.0/alcatraz_0.20.0_linux_amd64.tar.gz"
      sha256 "3a1d4d45fc1214111abccd9690456be8fe1a67399583cbdc9b1b0108905d9d00"
    end
  end

  def install
    bin.install "alcatraz"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alcatraz version")
  end
end
