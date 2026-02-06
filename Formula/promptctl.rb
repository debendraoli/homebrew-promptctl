class Promptctl < Formula
  desc "A CLI tool for managing coding prompts across projects"
  homepage "https://github.com/debendraoli/promptctl"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/debendraoli/promptctl/releases/download/v0.2.0/promptctl-aarch64-apple-darwin.tar.gz"
      sha256 "b108929b3be6ed8689deadbd2d4759b7c777c4127daf7a2b3a709c3da770d423"
    end
    on_intel do
      url "https://github.com/debendraoli/promptctl/releases/download/v0.2.0/promptctl-x86_64-apple-darwin.tar.gz"
      sha256 "d063af9084e9e3fe8d4cf892e524c1e123882e46cbf600241635b326807235ea"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/debendraoli/promptctl/releases/download/v0.2.0/promptctl-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e8e4c79f07755b68d033d2bc51bc40344f77ea8c57feb949b8429203ce7c0647"
    end
    on_intel do
      url "https://github.com/debendraoli/promptctl/releases/download/v0.2.0/promptctl-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "47a6bc9233f5017a19eaca3e7c53d158d554e246dd7bef2150cd3006f08c5013"
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
