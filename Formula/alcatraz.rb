class Alcatraz < Formula
  desc "Known-pattern PII detection CLI - in-process, no service, no network"
  homepage "https://github.com/hoophq/alcatraz"
  version "0.19.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/hoophq/alcatraz/releases/download/v0.19.0/alcatraz_0.19.0_darwin_arm64.tar.gz"
      sha256 "8dfe10b6a166aab7326c52d8626014378d49f7f1b764d65eec29652273dd74a1"
    end
    on_intel do
      url "https://github.com/hoophq/alcatraz/releases/download/v0.19.0/alcatraz_0.19.0_darwin_amd64.tar.gz"
      sha256 "27cdf1b002421863d0b4539346e78f1c85f442d310909511a5af17f1212cae64"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/hoophq/alcatraz/releases/download/v0.19.0/alcatraz_0.19.0_linux_arm64.tar.gz"
      sha256 "3e866d2f49aaa1fbf3ca55b5e1c3f922453f0cea05744f1005b166d4897dc4a0"
    end
    on_intel do
      url "https://github.com/hoophq/alcatraz/releases/download/v0.19.0/alcatraz_0.19.0_linux_amd64.tar.gz"
      sha256 "4908808eff5d428deaa7b80c93c9aba6036768adc41e8f42b1def4f8316914f1"
    end
  end

  def install
    bin.install "alcatraz"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alcatraz version")
  end
end
