class Czctl < Formula
  arch = Hardware::CPU.intel? ? "x64" : "arm64"
  os = OS.mac? ? "darwin" : "linux"

  desc "Develop, debug, deploy using CodeZero"
  homepage "https://codezero.io/"
  version "1.4.0"
  
  url "https://releases.codezero.io/#{version}/headless-#{os}-#{arch}.tgz"

  def install
    ohai ""
    ohai "Preparing to install CodeZero.  This may take a moment to complete."
    
    bin.install Dir["./*"]
  end

  test do
    system "czctl", "start"
    system "czctl", "stop"
  end
end