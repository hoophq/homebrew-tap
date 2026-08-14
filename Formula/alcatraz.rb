class Alcatraz < Formula
  desc "Known-pattern PII detection CLI - in-process, no service, no network"
  homepage "https://github.com/hoophq/alcatraz"
  version "0.18.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/hoophq/alcatraz/releases/download/v0.18.0/alcatraz_0.18.0_darwin_arm64.tar.gz"
      sha256 "c8a0935122ef4da41f3f41703cebc629f5fd7c77ffb35290538748011fc77be3"
    end
    on_intel do
      url "https://github.com/hoophq/alcatraz/releases/download/v0.18.0/alcatraz_0.18.0_darwin_amd64.tar.gz"
      sha256 "b68bf59c66ded59c4d867666bf250081510dcfcaa84e6aca0389dce533be5069"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/hoophq/alcatraz/releases/download/v0.18.0/alcatraz_0.18.0_linux_arm64.tar.gz"
      sha256 "ff07280704131a601d384715b5ee20288ba7eb3eda2aab47d750948ae8b8fc27"
    end
    on_intel do
      url "https://github.com/hoophq/alcatraz/releases/download/v0.18.0/alcatraz_0.18.0_linux_amd64.tar.gz"
      sha256 "5c3fd3923f54ca966816c2f3a1ae5eeb9fb7658625ea34309599eae922fa3911"
    end
  end

  def install
    bin.install "alcatraz"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alcatraz version")
  end
end
