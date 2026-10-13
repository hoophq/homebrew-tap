class Alcatraz < Formula
  desc "Known-pattern PII detection CLI - in-process, no service, no network"
  homepage "https://github.com/hoophq/alcatraz"
  version "0.22.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/hoophq/alcatraz/releases/download/v0.22.0/alcatraz_0.22.0_darwin_arm64.tar.gz"
      sha256 "ad5fcbfca683f2d159479575a4df070fae831c808e22ae65a05f52af79956edf"
    end
    on_intel do
      url "https://github.com/hoophq/alcatraz/releases/download/v0.22.0/alcatraz_0.22.0_darwin_amd64.tar.gz"
      sha256 "7c92fabaaf5ce650c2212f53dc061ad10b69bce5ca98fa641602b294ce1fa586"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/hoophq/alcatraz/releases/download/v0.22.0/alcatraz_0.22.0_linux_arm64.tar.gz"
      sha256 "00dc29218b2f7d906cc0e7e9441cfdb9ce80d4351007bd0198616f877ef339d1"
    end
    on_intel do
      url "https://github.com/hoophq/alcatraz/releases/download/v0.22.0/alcatraz_0.22.0_linux_amd64.tar.gz"
      sha256 "49bb057339adf74e3517c1ceae971ff998c41508895a8c10691d9a9465e7589e"
    end
  end

  def install
    bin.install "alcatraz"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alcatraz version")
  end
end
