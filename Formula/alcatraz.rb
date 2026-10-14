class Alcatraz < Formula
  desc "Known-pattern PII detection CLI - in-process, no service, no network"
  homepage "https://github.com/hoophq/alcatraz"
  version "0.23.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/hoophq/alcatraz/releases/download/v0.23.0/alcatraz_0.23.0_darwin_arm64.tar.gz"
      sha256 "738fd51093512b568b84b5e98b6ccbb731b62b99cc2043e90c5e5c3f518c1298"
    end
    on_intel do
      url "https://github.com/hoophq/alcatraz/releases/download/v0.23.0/alcatraz_0.23.0_darwin_amd64.tar.gz"
      sha256 "8f43f5a03320e4786372686ba3d2138cb3aad3ac6aec7a58716754951f14e5b7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/hoophq/alcatraz/releases/download/v0.23.0/alcatraz_0.23.0_linux_arm64.tar.gz"
      sha256 "e1957b9a74570155a97ac1932d3dc0f755919c6620cca42e67ba4a4c6a08b23e"
    end
    on_intel do
      url "https://github.com/hoophq/alcatraz/releases/download/v0.23.0/alcatraz_0.23.0_linux_amd64.tar.gz"
      sha256 "26dddde8d9c6e1a784fc7564fd03d69407f675fef275647d5bff775a33cbf4e8"
    end
  end

  def install
    bin.install "alcatraz"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alcatraz version")
  end
end
