pkgname=secux-hooks
pkgver=1.5.7
pkgrel=1
pkgdesc='Secux Linux branding, hooks and configuration'
arch=('any')
license=('GPL3')
url="https://github.com/kolbanidze/secux-hooks"

depends=('bash' 'filesystem')
optdepends=(
    'gnome-shell: for GNOME branding'
    'plasma-workspace: for KDE branding'
    'mkinitcpio: for kernel hooks'
)

source=(
  "secux-hooks-runner"
  "secux-hooks.hook"
  "secux-os-release.hook"
  "secux-lsb-release.hook"
  "secux-mkinitcpio.hook" 
  "99_secux_gnome.gschema.override"
  "kcm-about-distrorc"
  "SecuxLinux.svg"
)

sha512sums=('5c2a8446c8632f6978d7a0178366696d5e5ad7c79a74d79d1deb67d638c179b5dec8926c3666b586118e76592039d0479a02ad89154838c17c0a6e9301657a68'
            '20364062be82582df379fa4e7072e2add01f76c94340bad71b3ad7d1db28ee64be1d386a837730fac5ab1c42e78cabe842b63e79b3c744c5ae5248ef7a89da25'
            '9c4ccf9daecb0074cf19622b1a512df1fa6cadb3ac2004f6f657963dbc2e60cd4d7fba1aee80274d5b1fbe15a9767b44d3bd3afbb7c5cd36ab0c45f03088e279'
            '32f131a5e383d7f5c86ff4adc81222e47911b2dd8d25efacce86bbdd53f13e6ccb83ae70127f6ee1052704373817370cf0d7e7b80a863d666c9d0a2e1bb68484'
            'ca3c81a9541c6d4a1721432a298ff6cbe86a4b1282f4a647182c9fa601e8755a0958077a659ea0441971506c5360ace1b742b0894c95987bc844cc931af067ac'
            'eb03f272fac4bc4a85cae68a4e84b3ed36ac53d310eaca3318134c9dbc15dce4f0644c6ac4c6b4fa7f5aca3283598e7dad0cb84655bd0a27c7a77c9e14798ac3'
            '8a17faea04af5a5bd98801827170faaaeb78b3791a802cfafc21cdc804b6e5c5d5637bed44c6ca6a2b5dcb1dab0c4ca84c676f875e5a1737f0f1c10e60b67f59'
            '99a9cab5ef001b55148ff45c94d4411bbcb3bc404845a26e5279c0ab2a48b2a43fcbd516dad01c0dd9d216786369e81ee379ca03fea7ec36f5be9d016328ce8e')

package() {
  install -Dm755 secux-hooks-runner "$pkgdir/usr/bin/secux-hooks-runner"
  
  install -d "$pkgdir/usr/share/libalpm/hooks"
  install -Dm644 secux-hooks.hook "$pkgdir/usr/share/libalpm/hooks/secux-hooks.hook"
  install -Dm644 secux-os-release.hook "$pkgdir/usr/share/libalpm/hooks/secux-os-release.hook"
  install -Dm644 secux-lsb-release.hook "$pkgdir/usr/share/libalpm/hooks/secux-lsb-release.hook"
  
  install -Dm644 secux-mkinitcpio.hook "$pkgdir/usr/share/libalpm/hooks/50-secux-mkinitcpio.hook"
  
  install -Dm644 SecuxLinux.svg "$pkgdir/usr/share/icons/SecuxLinux.svg"
    
  install -Dm644 99_secux_gnome.gschema.override \
    "$pkgdir/usr/share/glib-2.0/schemas/99_secux_gnome.gschema.override"

  install -Dm644 kcm-about-distrorc \
    "$pkgdir/etc/xdg/kcm-about-distrorc"
}
