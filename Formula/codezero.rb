class CodezeroCanary < Formula
  desc "Develop, debug, deploy using CodeZero"
  homepage "https://codezero.io/"
  version :latest
  
  url "https://releases.codezero.io/install.sh",
    using: :curl

  def install
    ohai ""
    ohai "Preparing to install CodeZero.  This may take a moment to complete."
    
    system "/bin/bash", "./install.sh"
    bin.install_symlink "/usr/local/bin/codezero/czctl"
  end

  test do
    system "/usr/local/bin/czctl", "start"
    system "/usr/local/bin/czctl", "stop"
  end
end