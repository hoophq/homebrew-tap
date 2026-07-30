class Alcatraz < Formula
  desc "Known-pattern PII detection CLI - in-process, no service, no network"
  homepage "https://github.com/hoophq/alcatraz"
  version "0.9.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/hoophq/alcatraz/releases/download/v0.9.0/alcatraz_0.9.0_darwin_arm64.tar.gz"
      sha256 "1ee05ce5a687328ac8530bb329b16734b41ab29b5e137c2d4531019b90356687"
    end
    on_intel do
      url "https://github.com/hoophq/alcatraz/releases/download/v0.9.0/alcatraz_0.9.0_darwin_amd64.tar.gz"
      sha256 "920a3e0f460219613066c0b632dfbdf275c77681f25127ca86fdb22250a5b4e4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/hoophq/alcatraz/releases/download/v0.9.0/alcatraz_0.9.0_linux_arm64.tar.gz"
      sha256 "0bb6a26115280f088e022629cb10a1595005402408eaaf552eabac377b34de73"
    end
    on_intel do
      url "https://github.com/hoophq/alcatraz/releases/download/v0.9.0/alcatraz_0.9.0_linux_amd64.tar.gz"
      sha256 "7913274e50302d70b6b63baaa210ec1606129f16d7d33d6f0661fc602c17bd50"
    end
  end

  def install
    bin.install "alcatraz"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alcatraz version")
  end
end
