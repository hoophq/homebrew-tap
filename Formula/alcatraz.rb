class Alcatraz < Formula
  desc "Known-pattern PII detection CLI - in-process, no service, no network"
  homepage "https://github.com/hoophq/alcatraz"
  version "0.6.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/hoophq/alcatraz/releases/download/v0.6.0/alcatraz_0.6.0_darwin_arm64.tar.gz"
      sha256 "b2d096912d37c1ec3aeb5a4daefb7747c3f393ee59b3dc02ea83c07bf5fce90e"
    end
    on_intel do
      url "https://github.com/hoophq/alcatraz/releases/download/v0.6.0/alcatraz_0.6.0_darwin_amd64.tar.gz"
      sha256 "475608c7e6b5bc953504eb8c05133d1e8aa22ddd108f0a3e026556f40f7f42fd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/hoophq/alcatraz/releases/download/v0.6.0/alcatraz_0.6.0_linux_arm64.tar.gz"
      sha256 "fe2a74b301f70f2101f5a92b1171f984429fba0336b7bfb1a7568e821d8bbcfe"
    end
    on_intel do
      url "https://github.com/hoophq/alcatraz/releases/download/v0.6.0/alcatraz_0.6.0_linux_amd64.tar.gz"
      sha256 "9a7e004caacc3a0bc1fcbffaa1f5c167198b79571e47ac9bf464ef1e4ecfef57"
    end
  end

  def install
    bin.install "alcatraz"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alcatraz version")
  end
end
