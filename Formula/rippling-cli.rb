class RipplingCli < Formula
  desc "Unified command-line tool to invoke Rippling services"
  homepage "https://github.com/Rippling/rippling-cli"
  url "https://static-assets.ripplingcdn.com/cli/rippling-cli.0.2.0.tar.xz"
  sha256 "a77c078d89a603f8d86a223e4178f6081301d3ce58ea4324f354fa95e29cc141"
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
