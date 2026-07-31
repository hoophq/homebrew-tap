class Alcatraz < Formula
  desc "Known-pattern PII detection CLI - in-process, no service, no network"
  homepage "https://github.com/hoophq/alcatraz"
  version "0.13.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/hoophq/alcatraz/releases/download/v0.13.0/alcatraz_0.13.0_darwin_arm64.tar.gz"
      sha256 "b63eb1b9292468d55d29b26528e5cc539180a62ddb2eb771df71e9808a441834"
    end
    on_intel do
      url "https://github.com/hoophq/alcatraz/releases/download/v0.13.0/alcatraz_0.13.0_darwin_amd64.tar.gz"
      sha256 "aa212a2446e1ffec2d86a7cf26d7292fd6e712794cb737c63229b6f283be3f88"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/hoophq/alcatraz/releases/download/v0.13.0/alcatraz_0.13.0_linux_arm64.tar.gz"
      sha256 "c66639e1da8aea5be38db4e06175fd20e2fdfe2a549bec236e00b013df5587fb"
    end
    on_intel do
      url "https://github.com/hoophq/alcatraz/releases/download/v0.13.0/alcatraz_0.13.0_linux_amd64.tar.gz"
      sha256 "80dad68cee68370591b65e0833f9591093bc54a244576e7274505696675fc5b8"
    end
  end

  def install
    bin.install "alcatraz"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alcatraz version")
  end
end
