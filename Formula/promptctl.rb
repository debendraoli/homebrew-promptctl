class Promptctl < Formula
  desc "A CLI tool for managing coding prompts across projects"
  homepage "https://github.com/debendraoli/promptctl"
  url "https://github.com/debendraoli/promptctl/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "f043257f16c88ce7287b48fa8d8d0c92993c38a723f824baadda30c278980fb0"
  license "MIT"
  head "https://github.com/debendraoli/promptctl.git", branch: "main"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "promptctl", shell_output("#{bin}/promptctl --version")
    assert_match "rust", shell_output("#{bin}/promptctl list")
  end
end
