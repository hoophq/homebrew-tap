class Alcatraz < Formula
  desc "Known-pattern PII detection CLI - in-process, no service, no network"
  homepage "https://github.com/hoophq/alcatraz"
  version "0.12.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/hoophq/alcatraz/releases/download/v0.12.0/alcatraz_0.12.0_darwin_arm64.tar.gz"
      sha256 "f3be3bdf243e23404d5cc595ba43ee0eb72a301a59b6515644f26ab19ca03740"
    end
    on_intel do
      url "https://github.com/hoophq/alcatraz/releases/download/v0.12.0/alcatraz_0.12.0_darwin_amd64.tar.gz"
      sha256 "097c57e5a45fc50169cc20fdcd089121ef23f9584fe29a3b8a1e07e77cf865f8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/hoophq/alcatraz/releases/download/v0.12.0/alcatraz_0.12.0_linux_arm64.tar.gz"
      sha256 "c4498a89dde67c8a2d204cf3cd968b67e413cc36cd68bd699e16c729133b6b02"
    end
    on_intel do
      url "https://github.com/hoophq/alcatraz/releases/download/v0.12.0/alcatraz_0.12.0_linux_amd64.tar.gz"
      sha256 "45d3b1efa22fcf4fff33e8e40ae34733946a1dc26b53e746d5e15ef452eb17e7"
    end
  end

  def install
    bin.install "alcatraz"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alcatraz version")
  end
end
