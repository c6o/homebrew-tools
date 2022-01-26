require "language/node"

class Czctl < Formula
  desc "Develop, debug, deploy using CodeZero"
  homepage "https://codezero.io/"
  url "https://registry.npmjs.org/@c6o/cli/-/cli-1.3.1.tgz"
  sha256 "b3df7999db645dd37593d2d532e82319a4133b93f5ab00f6ae560178152d28db"

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    system "#{bin}/czctl", "help"
  end
end
