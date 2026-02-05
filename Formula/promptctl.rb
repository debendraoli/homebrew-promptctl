class Promptctl < Formula
  desc "A CLI tool for managing coding prompts across projects"
  homepage "https://github.com/debendraoli/promptctl"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/debendraoli/promptctl/releases/download/v0.1.0/promptctl-aarch64-apple-darwin.tar.gz"
      sha256 "b5361fbabda374c86a0919dbe8758361608cd4b2621777e027b1cef581830264"
    end
    on_intel do
      url "https://github.com/debendraoli/promptctl/releases/download/v0.1.0/promptctl-x86_64-apple-darwin.tar.gz"
      sha256 "047c8ae4109ab33079f3bd9e57f218a385f14c19838e7eaf2c0bdf45627353c2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/debendraoli/promptctl/releases/download/v0.1.0/promptctl-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "706aa1fb716cceee16b428b4b23964cb5156e957b224173bf2ba3b7dc021a688"
    end
    on_intel do
      url "https://github.com/debendraoli/promptctl/releases/download/v0.1.0/promptctl-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "7b2a3a6253f328cff092439fc0a1e2fe0b4e48d6602944ba4f9539686e3dac50"
    end
  end

  def install
    bin.install "promptctl"
  end

  test do
    assert_match "promptctl", shell_output("#{bin}/promptctl --version")
    assert_match "rust", shell_output("#{bin}/promptctl list")
  end
end
