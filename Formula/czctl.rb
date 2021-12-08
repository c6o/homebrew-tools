require "language/node"

class Czctl < Formula
  desc "Develop, debug, deploy using CodeZero"
  homepage "https://codezero.io/"
  url "https://registry.npmjs.org/@c6o/cli/-/cli-1.2.1.tgz"
  sha256 "4e0546fd732eb10dbf8398d561af08010bbf8e75b40ccbe6fdd8af9f05c9ffe1"

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    system "#{bin}/czctl", "help"
  end
end
