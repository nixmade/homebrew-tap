class Pippy < Formula
  desc "Create configurable pipelines on existing github action workflows"
  homepage "https://pippy.dev"
  version "1.1.1"
  
  on_macos do
    url "https://github.com/nixmade/pippy/releases/download/v1.1.1/pippy_Darwin_all.tar.gz"
    sha256 "8e4e53387f4cbfe8c2ad7a7698b67aa88f2e9af15683f0e2bf44f0e2a7254f4f"
    def install
      bin.install "pippy"
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/nixmade/pippy/releases/download/v1.1.1/pippy_Linux_x86_64.tar.gz"
        sha256 "e69fb8e7a3728f00870e3c0d51f4b8dfc89976787a5507eed53d0f8cf481a7fd"

        def install
          bin.install "pippy"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/nixmade/pippy/releases/download/v1.1.1/pippy_Linux_arm64.tar.gz"
        sha256 "e612080b0808d40646e940389a045e0121720ccde77da699b1d2ccd498e89188"

        def install
          bin.install "pippy"
        end
      end
    end
  end

  test do
    system "#{bin}/pippy", "--version"
  end
end