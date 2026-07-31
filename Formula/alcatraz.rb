class Alcatraz < Formula
  desc "Known-pattern PII detection CLI - in-process, no service, no network"
  homepage "https://github.com/hoophq/alcatraz"
  version "0.14.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/hoophq/alcatraz/releases/download/v0.14.0/alcatraz_0.14.0_darwin_arm64.tar.gz"
      sha256 "6aaafdafdb990a4204ec200a600fb8115641da2c452203eca035a5bb23d8395a"
    end
    on_intel do
      url "https://github.com/hoophq/alcatraz/releases/download/v0.14.0/alcatraz_0.14.0_darwin_amd64.tar.gz"
      sha256 "58ba33501d75325b51582e6685c45988a19a084a5d5a35149ffc220e021febd9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/hoophq/alcatraz/releases/download/v0.14.0/alcatraz_0.14.0_linux_arm64.tar.gz"
      sha256 "5f0a7eeaaa50de4a80e39aeea86e6b09fbc330ba550339fb3a44fa9233934cc6"
    end
    on_intel do
      url "https://github.com/hoophq/alcatraz/releases/download/v0.14.0/alcatraz_0.14.0_linux_amd64.tar.gz"
      sha256 "00befc73923aea84a0e1261c55387da05a059275d3ac84a6862a63775a085fbc"
    end
  end

  def install
    bin.install "alcatraz"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alcatraz version")
  end
end
