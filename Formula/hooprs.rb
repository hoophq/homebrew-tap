class Hooprs < Formula
  desc "Local PII and secrets risk scanner for AI coding sessions"
  homepage "https://github.com/hoophq/rs"
  version "0.2.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/hoophq/rs/releases/download/v0.2.5/hooprs_0.2.5_darwin_arm64.tar.gz"
      sha256 "9bb77b1b43a35948185b6a72e58de2c50d806a2979e6489a901d2fca47902415"
    end
    on_intel do
      url "https://github.com/hoophq/rs/releases/download/v0.2.5/hooprs_0.2.5_darwin_amd64.tar.gz"
      sha256 "fe912c941f5192c4f04c932f8b0928c999622d870c925650380673c690b4b712"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/hoophq/rs/releases/download/v0.2.5/hooprs_0.2.5_linux_arm64.tar.gz"
      sha256 "a7315001b22d93eed29fba81570f251dfbf34aebda0e26df22be9ece428754d3"
    end
    on_intel do
      url "https://github.com/hoophq/rs/releases/download/v0.2.5/hooprs_0.2.5_linux_amd64.tar.gz"
      sha256 "89aa50b0d9ee56b54bb8da66695c1e66f5f8c96fe275020041f3c61b114d3ff3"
    end
  end

  def install
    bin.install "hooprs"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hooprs -version")
  end
end
