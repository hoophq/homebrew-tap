class Hooprs < Formula
  desc "Local PII and secrets risk scanner for AI coding sessions"
  homepage "https://github.com/hoophq/rs"
  version "0.2.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/hoophq/rs/releases/download/v0.2.7/hooprs_0.2.7_darwin_arm64.tar.gz"
      sha256 "89acc0a791a5908440522fcc52fe07558d12f8816fa0b4e3a0f63c24beae317b"
    end
    on_intel do
      url "https://github.com/hoophq/rs/releases/download/v0.2.7/hooprs_0.2.7_darwin_amd64.tar.gz"
      sha256 "b740ea1bcc9c48faea8d355adf418f87a8659846f4eca59dcad886439ea8800f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/hoophq/rs/releases/download/v0.2.7/hooprs_0.2.7_linux_arm64.tar.gz"
      sha256 "7527840a815bc038b30813c33a2934a16e207911605f2c50ce25033506bf21d4"
    end
    on_intel do
      url "https://github.com/hoophq/rs/releases/download/v0.2.7/hooprs_0.2.7_linux_amd64.tar.gz"
      sha256 "95c0691504a565be7937d1711d5b2f8bc89c64307b0f04331fec67db72593619"
    end
  end

  def install
    bin.install "hooprs"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hooprs -version")
  end
end
