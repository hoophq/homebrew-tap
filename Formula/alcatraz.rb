class Alcatraz < Formula
  desc "Known-pattern PII detection CLI - in-process, no service, no network"
  homepage "https://github.com/hoophq/alcatraz"
  version "0.21.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/hoophq/alcatraz/releases/download/v0.21.0/alcatraz_0.21.0_darwin_arm64.tar.gz"
      sha256 "5515ba3f4be93965142f4677fa7e81568cf603b1af223cb11ab9075cbb1606c1"
    end
    on_intel do
      url "https://github.com/hoophq/alcatraz/releases/download/v0.21.0/alcatraz_0.21.0_darwin_amd64.tar.gz"
      sha256 "7eed47a199948eafcbc15e7b60c75c0a2fd146d1ff84253ee619f3691dd6b8d3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/hoophq/alcatraz/releases/download/v0.21.0/alcatraz_0.21.0_linux_arm64.tar.gz"
      sha256 "cf29f475dc89ece028c291a7d07133dc77382b663a6ce578c26c1fd6756e31aa"
    end
    on_intel do
      url "https://github.com/hoophq/alcatraz/releases/download/v0.21.0/alcatraz_0.21.0_linux_amd64.tar.gz"
      sha256 "fecf5102d44da81e03a34a282a5118b0518c12fd76a93b4b7ea96b2238eab98e"
    end
  end

  def install
    bin.install "alcatraz"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alcatraz version")
  end
end
