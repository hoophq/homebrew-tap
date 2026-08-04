class Alcatraz < Formula
  desc "Known-pattern PII detection CLI - in-process, no service, no network"
  homepage "https://github.com/hoophq/alcatraz"
  version "0.14.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/hoophq/alcatraz/releases/download/v0.14.1/alcatraz_0.14.1_darwin_arm64.tar.gz"
      sha256 "1435b56c6ad49cad6e9e1ec8bbbf663dbbbe6dd18cd04abdb89290d1e46268eb"
    end
    on_intel do
      url "https://github.com/hoophq/alcatraz/releases/download/v0.14.1/alcatraz_0.14.1_darwin_amd64.tar.gz"
      sha256 "789e8d9e64627462cceb8240b64c2a9235e387bca301de96d39d3db7c1646915"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/hoophq/alcatraz/releases/download/v0.14.1/alcatraz_0.14.1_linux_arm64.tar.gz"
      sha256 "7bce2c2141d083a01ac1e7a4fbb6576427ce3d9d6fd155546c464a40bcae9dc4"
    end
    on_intel do
      url "https://github.com/hoophq/alcatraz/releases/download/v0.14.1/alcatraz_0.14.1_linux_amd64.tar.gz"
      sha256 "aed92f4fc9e033c9484a9671562779b2c9dd0706c661be3aedcd437432cd6df3"
    end
  end

  def install
    bin.install "alcatraz"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alcatraz version")
  end
end
