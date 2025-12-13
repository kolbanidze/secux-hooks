pkgname=secux-hooks
pkgver=1.5.0
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

sha512sums=('707c58278d1cc2b6045899a37e5785299eda411a91c979e7116ac494168a1df6e9c4d22ddda5cd5cf780bbf190bedc29fb1af6ce4dbe27353eb08ea12909157f'
            '20364062be82582df379fa4e7072e2add01f76c94340bad71b3ad7d1db28ee64be1d386a837730fac5ab1c42e78cabe842b63e79b3c744c5ae5248ef7a89da25'
            '9c4ccf9daecb0074cf19622b1a512df1fa6cadb3ac2004f6f657963dbc2e60cd4d7fba1aee80274d5b1fbe15a9767b44d3bd3afbb7c5cd36ab0c45f03088e279'
            '32f131a5e383d7f5c86ff4adc81222e47911b2dd8d25efacce86bbdd53f13e6ccb83ae70127f6ee1052704373817370cf0d7e7b80a863d666c9d0a2e1bb68484'
            'a31e7343d10f3c6d7cac7426b6b250dc6149daaf83f62d423d613ca707753fffb87f6c1932b8aefc8c4a7c2ebd6e9279dc7dbee76edfb29f4c44ece135fe2c92'
            '408283b363665a4931ea983ae7dbc93e1e4e90326df6bb21f76f474f5e646f709c6181e24046c30654c1ff53fa233ed45fbc6a2a1864154b1d34e3fd489383d3'
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
