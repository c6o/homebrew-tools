require "language/node"

class Czctl < Formula
  desc "Develop, debug, deploy using CodeZero"
  homepage "https://codezero.io/"
  url "https://registry.npmjs.org/@c6o/cli/-/cli-1.2.2.tgz"
  sha256 "d43e39326f90772d57a03b5c6d08f28f3aa777acb5e4740ae112c85aa09963cb"

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    system "#{bin}/czctl", "help"
  end
end
