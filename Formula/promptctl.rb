class Promptctl < Formula
  desc "A CLI tool for managing coding prompts across projects"
  homepage "https://github.com/debendraoli/promptctl"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/debendraoli/promptctl/releases/download/v0.3.0/promptctl-aarch64-apple-darwin.tar.gz"
      sha256 "fb1c1c5ec0e466e01ee00243b73a8daeecbb621856e7fadc0faf46b9edaaac92"
    end
    on_intel do
      url "https://github.com/debendraoli/promptctl/releases/download/v0.3.0/promptctl-x86_64-apple-darwin.tar.gz"
      sha256 "529622df7599e9d896a7fd928b7bae0e58d38f1ea8f7eb1e9c5d7c0ada627a3d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/debendraoli/promptctl/releases/download/v0.3.0/promptctl-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ecf4e2225af25cf81ed38bcd9dd74f5f345016ba4f21f146264d0009a1cda716"
    end
    on_intel do
      url "https://github.com/debendraoli/promptctl/releases/download/v0.3.0/promptctl-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "103bc3ef50b55fabef477cc4d5b39152b20208d0774529f5022704f6e1b5e7c3"
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
