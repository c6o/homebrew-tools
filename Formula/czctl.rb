require "language/node"

class Czctl < Formula
  desc "Develop, debug, deploy using CodeZero"
  homepage "https://codezero.io/"
  url "https://registry.npmjs.org/@c6o/cli/-/cli-1.2.0.tgz"
  sha256 "a9f42c8ac4cf0763d43479f4eac1998478b8c00f6b88dacd739908341ef83549"

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    system "#{bin}/czctl", "help"
  end
end
