class Pippy < Formula
  desc "Create configurable pipelines on existing github action workflows"
  homepage "https://pippy.dev"
  version "1.2.0"
  
  on_macos do
    url "https://github.com/nixmade/pippy/releases/download/v1.2.0/pippy_Darwin_all.tar.gz"
    sha256 "73b902c9f7db3b3ce60c38b2ad026ae0f6b4be58161c8903b254efb41142dc38"
    def install
      bin.install "pippy"
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/nixmade/pippy/releases/download/v1.2.0/pippy_Linux_x86_64.tar.gz"
        sha256 "05a2e4cd299181eb492f9f9f7383b45de63fa00ba6b1b924e6d8e0698e3a3957"

        def install
          bin.install "pippy"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/nixmade/pippy/releases/download/v1.2.0/pippy_Linux_arm64.tar.gz"
        sha256 "1ca1524e8c3f3fb6e9b18f94c270ff90579b815515dee525b3be9742e3e2b975"

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