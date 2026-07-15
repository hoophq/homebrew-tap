class Alcatraz < Formula
  desc "Known-pattern PII detection CLI - in-process, no service, no network"
  homepage "https://github.com/hoophq/alcatraz"
  version "0.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/hoophq/alcatraz/releases/download/v0.5.0/alcatraz_0.5.0_darwin_arm64.tar.gz"
      sha256 "ee861baae51cadbcc069e4bf357a59acb0ab1aa2420a1551c005414a3eeee8d2"
    end
    on_intel do
      url "https://github.com/hoophq/alcatraz/releases/download/v0.5.0/alcatraz_0.5.0_darwin_amd64.tar.gz"
      sha256 "2bda13ca95487cc904296831a8f0044a9d38b0f0bcd3323043472777e9bf9f59"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/hoophq/alcatraz/releases/download/v0.5.0/alcatraz_0.5.0_linux_arm64.tar.gz"
      sha256 "7f4cbb5f84a4f95cada8d7a2e520b9fec0acd51f47c149602762bd87fd4970ad"
    end
    on_intel do
      url "https://github.com/hoophq/alcatraz/releases/download/v0.5.0/alcatraz_0.5.0_linux_amd64.tar.gz"
      sha256 "739221e173ceb91705e4ae1c99e5adfc08dadcd19afe9d66447ac65386b046cb"
    end
  end

  def install
    bin.install "alcatraz"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alcatraz version")
  end
end
