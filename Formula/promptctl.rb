class Promptctl < Formula
  desc "A CLI tool for managing coding prompts across projects"
  homepage "https://github.com/debendraoli/promptctl"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/debendraoli/promptctl/releases/download/v0.2.0/promptctl-aarch64-apple-darwin.tar.gz"
      sha256 "a0caf80af4a0292d351e520f884628358719f6ac269af91956437cab1abc0cc1"
    end
    on_intel do
      url "https://github.com/debendraoli/promptctl/releases/download/v0.2.0/promptctl-x86_64-apple-darwin.tar.gz"
      sha256 "d1c896582320a9dd21cbda77b2e602bfdfceedabaf14656f4cf9a02fbc5545a0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/debendraoli/promptctl/releases/download/v0.2.0/promptctl-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "fb7aa4ee8a1705129caaaa3e4321aad19eeb46d43b8d5b0efc4ebde83a949125"
    end
    on_intel do
      url "https://github.com/debendraoli/promptctl/releases/download/v0.2.0/promptctl-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "97765ad71bc1abb01bda24b6c6a7447794d808b4e01d0ea25409d4c3a498e91e"
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
