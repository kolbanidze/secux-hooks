pkgname=secux-hooks
pkgver=1.6.0
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
  "SecuxLinux.svg"
  "SecuxLinux-text.svg"
  "SecuxLinux-text-dark.svg"
)

sha512sums=('5c2a8446c8632f6978d7a0178366696d5e5ad7c79a74d79d1deb67d638c179b5dec8926c3666b586118e76592039d0479a02ad89154838c17c0a6e9301657a68'
            '20364062be82582df379fa4e7072e2add01f76c94340bad71b3ad7d1db28ee64be1d386a837730fac5ab1c42e78cabe842b63e79b3c744c5ae5248ef7a89da25'
            '9c4ccf9daecb0074cf19622b1a512df1fa6cadb3ac2004f6f657963dbc2e60cd4d7fba1aee80274d5b1fbe15a9767b44d3bd3afbb7c5cd36ab0c45f03088e279'
            '32f131a5e383d7f5c86ff4adc81222e47911b2dd8d25efacce86bbdd53f13e6ccb83ae70127f6ee1052704373817370cf0d7e7b80a863d666c9d0a2e1bb68484'
            'ba1211dfb0098b4d9735e41f9d5fb1b3339a53cbdcf3c0b48b5969177d9aefdd3183b2faa5d177731632dd907dc063fdf25db6c2213859f2f1bd796a008308be'
            'eb03f272fac4bc4a85cae68a4e84b3ed36ac53d310eaca3318134c9dbc15dce4f0644c6ac4c6b4fa7f5aca3283598e7dad0cb84655bd0a27c7a77c9e14798ac3'
            '705436f5888852c1581a323b484dda41ffc67fb9c19b6ee6b9cbc12376a27061af984980f80746bc54a48f97b2e077bf3dd44a4fb5c34d8b6eb525786ce416f1'
            'f1ac2726af4b7665a4821349e8d8c2f64cfb594925a3a1927316bd95ccc2d49a18d4ee0c2351f40ce269733b3004a33067718bde852df2a9f72356b8952b1915'
            '93ba2fd476be0519439bf10e6b4047f7cbf856ff852c34d0bae847ed4e8569ede898cebd8134de18dcf2758836a99fd465906856436b4926cfd06dbe0a191ec3')

package() {
  install -Dm755 secux-hooks-runner "$pkgdir/usr/bin/secux-hooks-runner"
  
  install -d "$pkgdir/usr/share/libalpm/hooks"
  install -Dm644 secux-hooks.hook "$pkgdir/usr/share/libalpm/hooks/secux-hooks.hook"
  install -Dm644 secux-os-release.hook "$pkgdir/usr/share/libalpm/hooks/secux-os-release.hook"
  install -Dm644 secux-lsb-release.hook "$pkgdir/usr/share/libalpm/hooks/secux-lsb-release.hook"
  
  install -Dm644 secux-mkinitcpio.hook "$pkgdir/usr/share/libalpm/hooks/50-secux-mkinitcpio.hook"
  
  install -Dm644 SecuxLinux.svg "$pkgdir/usr/share/icons/hicolor/scalable/apps/SecuxLinux.svg"
  install -Dm644 SecuxLinux-text.svg "$pkgdir/usr/share/icons/hicolor/scalable/apps/SecuxLinux-text.svg"
  install -Dm644 SecuxLinux-text-dark.svg "$pkgdir/usr/share/icons/hicolor/scalable/apps/SecuxLinux-text-dark.svg"
    
  install -Dm644 99_secux_gnome.gschema.override \
    "$pkgdir/usr/share/glib-2.0/schemas/99_secux_gnome.gschema.override"
}
