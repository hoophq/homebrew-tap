class Hooprs < Formula
  desc "Local PII and secrets risk scanner for AI coding sessions"
  homepage "https://github.com/hoophq/rs"
  version "0.2.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/hoophq/rs/releases/download/v0.2.3/hooprs_0.2.3_darwin_arm64.tar.gz"
      sha256 "f50d84bf62572bd145ceced71e5cf124b62901493a2e6537f7bb59942625ac99"
    end
    on_intel do
      url "https://github.com/hoophq/rs/releases/download/v0.2.3/hooprs_0.2.3_darwin_amd64.tar.gz"
      sha256 "a9ef361c475f928818f0afc506cae87e07e0f164558070620bfc5f9b99b231a1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/hoophq/rs/releases/download/v0.2.3/hooprs_0.2.3_linux_arm64.tar.gz"
      sha256 "74f363b9046b9c163a00aa711e0c2d8358bad04ae2aa6e6b63491e21304c16aa"
    end
    on_intel do
      url "https://github.com/hoophq/rs/releases/download/v0.2.3/hooprs_0.2.3_linux_amd64.tar.gz"
      sha256 "728f8bf62cc4ebe24f9c511c58097c15593f83cc6a89462e6347dec1c193a086"
    end
  end

  def install
    bin.install "hooprs"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hooprs -version")
  end
end
