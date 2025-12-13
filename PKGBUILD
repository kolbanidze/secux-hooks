pkgname=secux-hooks
pkgver=1.4.1
pkgrel=1
pkgdesc='Secux Linux pacman hooks'
arch=('any')
license=('GPL3')
url=https://github.com/kolbanidze/secux-hooks

depends=()

source=(
  $_url/secux-os-release.hook
  $_url/secux-lsb-release.hook
  $_url/secux-mkinitcpio.hook
  $_url/${pkgname}.hook
  $_url/${pkgname}-runner
)

# updpkgsums
sha512sums=('9c4ccf9daecb0074cf19622b1a512df1fa6cadb3ac2004f6f657963dbc2e60cd4d7fba1aee80274d5b1fbe15a9767b44d3bd3afbb7c5cd36ab0c45f03088e279'
            '32f131a5e383d7f5c86ff4adc81222e47911b2dd8d25efacce86bbdd53f13e6ccb83ae70127f6ee1052704373817370cf0d7e7b80a863d666c9d0a2e1bb68484'
            'a31e7343d10f3c6d7cac7426b6b250dc6149daaf83f62d423d613ca707753fffb87f6c1932b8aefc8c4a7c2ebd6e9279dc7dbee76edfb29f4c44ece135fe2c92'
            '20364062be82582df379fa4e7072e2add01f76c94340bad71b3ad7d1db28ee64be1d386a837730fac5ab1c42e78cabe842b63e79b3c744c5ae5248ef7a89da25'
            'a3672daba2a74b96231da9abacea1f089be7f45f305fa2eef313a01650f898ae8fc64f79cbb75f422f5100b2a6640f48a6450eaa5bb31c3bbac3b6db50de8802')

package() {
  local hooks=$pkgdir/usr/share/libalpm/hooks
  local bin=$pkgdir/usr/bin

  install -Dm644 secux-lsb-release.hook      $hooks/secux-lsb-release.hook
  install -Dm644 secux-os-release.hook       $hooks/secux-os-release.hook
  install -Dm644 secux-mkinitcpio.hook       $hooks/secux-mkinitcpio.hook
  install -Dm644 ${pkgname}.hook             $hooks/${pkgname}.hook

  install -Dm755 ${pkgname}-runner           $bin/${pkgname}-runner
}
