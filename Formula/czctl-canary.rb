class CzctlCanary < Formula
  desc "Develop, debug, deploy using CodeZero"
  homepage "https://codezero.io/"
  version "1.4.0-alpha.1"
  
  #url "https://get.codezero.io/#{version}/install.sh",
  url "https://storage.googleapis.com/c6o-releases/install-headless.sh",
    using: :curl

  def install
    ohai ""
    ohai "Preparing to install CodeZero.  This may take a moment to complete."
    
    system "/bin/bash", "./install-headless.sh", "canary"
    bin.install_symlink "/usr/local/bin/codezero/czctl"
  end

  test do
    system "/usr/local/bin/czctl", "start"
    system "/usr/local/bin/czctl", "stop"
  end
end