class Alcatraz < Formula
  desc "Known-pattern PII detection CLI - in-process, no service, no network"
  homepage "https://github.com/hoophq/alcatraz"
  version "0.8.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/hoophq/alcatraz/releases/download/v0.8.0/alcatraz_0.8.0_darwin_arm64.tar.gz"
      sha256 "05c002109eaf4a9bf8fa094829f9e7247515b417167b8174d163840c6f054935"
    end
    on_intel do
      url "https://github.com/hoophq/alcatraz/releases/download/v0.8.0/alcatraz_0.8.0_darwin_amd64.tar.gz"
      sha256 "bf6c2ed975f701c0e77c1122e10712abb95bea7efd590078a7112f2e4fa478bf"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/hoophq/alcatraz/releases/download/v0.8.0/alcatraz_0.8.0_linux_arm64.tar.gz"
      sha256 "b7fa74b031c051d362956856797b4d18d89d0967067319f10df5db3c6f8d4b79"
    end
    on_intel do
      url "https://github.com/hoophq/alcatraz/releases/download/v0.8.0/alcatraz_0.8.0_linux_amd64.tar.gz"
      sha256 "927bebb16568c7d3d9b77102b2e3446b9baa521bb8f8eb5e480a8911004ef37a"
    end
  end

  def install
    bin.install "alcatraz"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alcatraz version")
  end
end
