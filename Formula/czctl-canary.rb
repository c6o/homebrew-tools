class CzctlCanary < Formula
  desc "Develop, debug, deploy using CodeZero"
  homepage "https://codezero.io/"
  version "1.4.0-alpha.2"
  
  url "https://releases.codezero.io/install-headless.sh",
    using: :curl

  head do
    version "1.4.0-alpha.2"
  end

  def install
    ohai ""
    ohai "Preparing to install CodeZero.  This may take a moment to complete."
    
    system "/bin/bash", "./install-headless.sh", version
    bin.install_symlink "/usr/local/bin/codezero/czctl"
  end

  test do
    system "/usr/local/bin/czctl", "start"
    system "/usr/local/bin/czctl", "stop"
  end
end