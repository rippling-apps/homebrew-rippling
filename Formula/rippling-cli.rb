class RipplingCli < Formula
  desc "Unified command-line tool to invoke Rippling services"
  homepage "https://github.com/Rippling/rippling-cli"
  url "https://static-assets.ripplingcdn.com/cli/rippling-cli.0.1.0.tar.gz"
  sha256 "eefd1bf65e0edab610b705afbd78e580a6f833838ed1cd104780e8fb858033a4"
  license "Apache-2.0"

  def install
    libexec.install "rippling-cli/_internal"
    bin.install "rippling-cli/rippling-cli"
    env = { PATH: "#{libexec}:$PATH" }
    bin.env_script_all_files(libexec, env)
  end
  test do
    system "#{bin}/rippling-cli", "--help"
  end
end
