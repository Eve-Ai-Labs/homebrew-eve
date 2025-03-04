class Eve < Formula
    desc "A distributed, safe, and community-owned AI network"
    homepage "https://eveai.dev/"
    version "0.1.0"
  
    on_macos do
      if Hardware::CPU.arm?
        url "https://github.dev/Eve-Ai-Labs/eve/releases/eve-v0.1.0/eve-cli-v0.1.0-macos-arm64.zip"
        sha256 "ed8c282a2a548b2f956acde82e010270378cfa10b77044563864b91ebb0bf49b"
      else
        url "https://github.com/Eve-Ai-Labs/eve/releases/eve-v0.1.0/eve-cli-v0.1.0-macos-x86_64.zip"
        sha256 "9360b54e9e447c4fd99636f233928b9d1ef93524c4f1742d3a76521cd2e2d9e1"
      end
    end
  
    on_linux do
        url "https://github.dev/Eve-Ai-Labs/eve/releases/eve-v0.1.0/eve-cli-v0.1.0-linux-x86_64.zip"
        sha256 "731f54a7fb6c944a920f8d4e021131c3914ea5045103d3efea9b0c6e03118030"
      end
  
    def install
      bin.install "eve"
    end
  
    test do
      system "#{bin}/eve", "--help"
    end
  end