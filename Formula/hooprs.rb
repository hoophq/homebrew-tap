class Hooprs < Formula
  desc "Local PII and secrets risk scanner for AI coding sessions"
  homepage "https://github.com/hoophq/rs"
  version "0.2.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/hoophq/rs/releases/download/v0.2.6/hooprs_0.2.6_darwin_arm64.tar.gz"
      sha256 "dddb29b885147a8400e016f3a3b5345d5ccc92d0571d5c3d90c35217bdb83f52"
    end
    on_intel do
      url "https://github.com/hoophq/rs/releases/download/v0.2.6/hooprs_0.2.6_darwin_amd64.tar.gz"
      sha256 "7f50a06dbbfa2e1c6453016efbd0571c025927812cefa61cab3eb441b6ca55ac"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/hoophq/rs/releases/download/v0.2.6/hooprs_0.2.6_linux_arm64.tar.gz"
      sha256 "d10892f2a4a3f2efefe271b67a7bab23f06d74681e9fa1ddad30dbe2ce1b06a2"
    end
    on_intel do
      url "https://github.com/hoophq/rs/releases/download/v0.2.6/hooprs_0.2.6_linux_amd64.tar.gz"
      sha256 "144c1a0f969fc4323f48b3cea093d0417ccffe907479b9633c90484272dbbd90"
    end
  end

  def install
    bin.install "hooprs"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hooprs -version")
  end
end
