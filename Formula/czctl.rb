require "language/node"

class Czctl < Formula
  desc "Develop, debug, deploy using CodeZero"
  homepage "https://codezero.io/"
  url "https://registry.npmjs.org/@c6o/cli/-/cli-1.3.0.tgz"
  sha256 "133c29d36c807a250e7b6f4457c5f72ea0c502d3cf07348ffc58aa5f1cb4cbef"

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    system "#{bin}/czctl", "help"
  end
end
