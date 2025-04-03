class Eve < Formula
    desc "A distributed, safe, and community-owned AI network"
    homepage "https://eveai.dev/"
    version "0.1.0"
  
    on_macos do
      if Hardware::CPU.arm?
        url "https://github.com/Eve-Ai-Labs/eve/releases/download/eve-v0.1.0/eve-cli-v0.1.0-macos-arm64.zip"
        sha256 "3a92e4914b59199897902897d3741767aad93ac0b0762232780e5d776d51ed62"
      else
        url "https://github.com/Eve-Ai-Labs/eve/releases/download/eve-v0.1.0/eve-cli-v0.1.0-macos-x86_64.zip"
        sha256 "ff9ba81bced5bdec48c64c94a6fd8b9226bd9f82e2a531d1431ec79a566e97c3"
      end
    end
  
    on_linux do
        url "https://github.com/Eve-Ai-Labs/eve/releases/download/eve-v0.1.0/eve-cli-v0.1.0-linux-x86_64.zip"
        sha256 "cb76214f42a8001dc46271c6b939edbf382cade0a182896e075dc1745e79af00"
      end
  
    def install
      bin.install "eve"
    end
  
    test do
      system "#{bin}/eve", "--help"
    end
  end
