class Pippy < Formula
  desc "Create configurable pipelines on existing github action workflows"
  homepage "https://pippy.dev"
  version "1.0.0"
  
  on_macos do
    url "https://github.com/nixmade/pippy/releases/download/v1.0.0/pippy_Darwin_all.tar.gz"
    sha256 "6549fb75c023283baef1c24ff514c5dc9c8410fdc71f9063b479e2f5bfe6ede4"
    def install
      bin.install "pippy"
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/nixmade/pippy/releases/download/v1.0.0/pippy_Linux_x86_64.tar.gz"
        sha256 "368e103a02c8494a747d1716e8bc2dde14e067509fa48c5328c4a0a75dc4d953"

        def install
          bin.install "pippy"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/nixmade/pippy/releases/download/v1.0.0/pippy_Linux_arm64.tar.gz"
        sha256 "74990fbb3cf4ab2d976258887ab7268b80b397cc038159f065aa249d7b8ca8db"

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