class Hooprs < Formula
  desc "Local PII and secrets risk scanner for AI coding sessions"
  homepage "https://github.com/hoophq/rs"
  version "0.2.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/hoophq/rs/releases/download/v0.2.4/hooprs_0.2.4_darwin_arm64.tar.gz"
      sha256 "cc52d320e1a26c01e68f4ac6b142841a2b7e127dbacbab3d831b09f5afacc155"
    end
    on_intel do
      url "https://github.com/hoophq/rs/releases/download/v0.2.4/hooprs_0.2.4_darwin_amd64.tar.gz"
      sha256 "52193ad0f7b4abe1f5a3f4f73555ea40d0afd8c20cf69de34606457be4faf0a9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/hoophq/rs/releases/download/v0.2.4/hooprs_0.2.4_linux_arm64.tar.gz"
      sha256 "e7b8caf878100c41afcb00174390298f60ae7cbca8de6e8e87c09fb958b3d86f"
    end
    on_intel do
      url "https://github.com/hoophq/rs/releases/download/v0.2.4/hooprs_0.2.4_linux_amd64.tar.gz"
      sha256 "f0e84991ce51da5ac60bd1f1d47c4130e9da39d86aecf1417a3401c5824c622d"
    end
  end

  def install
    bin.install "hooprs"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hooprs -version")
  end
end
