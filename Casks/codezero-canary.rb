cask 'codezero-canary' do
    arch = Hardware::CPU.intel? ? "x64" : "arm64"
    sha256 "d9bb3fb4c275336512c3c52c9db333a75ca2b2f9919bf271a86ae91eae160d9f"
  
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