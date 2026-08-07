class Alcatraz < Formula
  desc "Known-pattern PII detection CLI - in-process, no service, no network"
  homepage "https://github.com/hoophq/alcatraz"
  version "0.15.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/hoophq/alcatraz/releases/download/v0.15.0/alcatraz_0.15.0_darwin_arm64.tar.gz"
      sha256 "f8be73a502cbda2e1bf3e7331ed2b2434052cea371a8ed4733a506597645ee9d"
    end
    on_intel do
      url "https://github.com/hoophq/alcatraz/releases/download/v0.15.0/alcatraz_0.15.0_darwin_amd64.tar.gz"
      sha256 "2995247774d3cea12eaab22ea32ed4e695642c9a73b2bfafceadd1f5ea74ddce"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/hoophq/alcatraz/releases/download/v0.15.0/alcatraz_0.15.0_linux_arm64.tar.gz"
      sha256 "63b37b060444d3f44af46905d58a07439eca7394812b8e9c6a70d484b578b221"
    end
    on_intel do
      url "https://github.com/hoophq/alcatraz/releases/download/v0.15.0/alcatraz_0.15.0_linux_amd64.tar.gz"
      sha256 "2511e718c75070a93aa8f7a8dc5b320e69297e5a7b577421c4c011a8e8edac5d"
    end
  end

  def install
    bin.install "alcatraz"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alcatraz version")
  end
end
