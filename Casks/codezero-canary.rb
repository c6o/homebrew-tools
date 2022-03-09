cask 'codezero-canary' do
    arch = Hardware::CPU.intel? ? "x64" : "arm64"
  
    version "1.4.0-alpha.2"
    sha256 :no_check

    conflicts_with cask: "c6o/tools/codezero", tap: [
        "c6o/tools/czctl-canary",
        "c6o/tools/czctl"
    ]
  
    url "https://storage.googleapis.com/c6o-releases/#{version}/CodeZero-darwin-#{arch}.pkg"
    name 'CodeZero'
  
    pkg "CodeZero-darwin-#{arch}.pkg", allow_untrusted: true
    uninstall pkgutil: 'io.codezero.desktop'
end