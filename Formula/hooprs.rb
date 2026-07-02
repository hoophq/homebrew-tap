class Hooprs < Formula
  desc "Local PII and secrets risk scanner for AI coding sessions"
  homepage "https://github.com/hoophq/rs"
  version "0.2.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/hoophq/rs/releases/download/v0.2.2/hooprs_0.2.2_darwin_arm64.tar.gz"
      sha256 "9d916af04f0287870a2a4a191be654a7940549cfd96f0990e2411913b4c1b04c"
    end
    on_intel do
      url "https://github.com/hoophq/rs/releases/download/v0.2.2/hooprs_0.2.2_darwin_amd64.tar.gz"
      sha256 "5495eaf363facddeab23af1640426a28547138fb1ce237676d3726c9ec58a1d4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/hoophq/rs/releases/download/v0.2.2/hooprs_0.2.2_linux_arm64.tar.gz"
      sha256 "4f6cee441962229ff48ec317353da4a54bab7040113148cd433292bdba0dd5cd"
    end
    on_intel do
      url "https://github.com/hoophq/rs/releases/download/v0.2.2/hooprs_0.2.2_linux_amd64.tar.gz"
      sha256 "a4f1e4fb52fe80ce34de8afd287ae2c3b2a105dc900b2d359e1b2ae761efd43a"
    end
  end

  def install
    bin.install "hooprs"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hooprs -version")
  end
end
