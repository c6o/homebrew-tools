cask 'desktop-testing' do
    version :latest
    sha256 :no_check
  
    url 'https://storage.googleapis.com/c6o-releases/ns-test/CodeZero%20Desktop-darwin-x64.pkg'
    name 'CodeZero Desktop'
  
    pkg 'CodeZero Desktop-darwin-x64.pkg', allow_untrusted: true
  
    uninstall pkgutil: 'io.codezero.desktop'
end