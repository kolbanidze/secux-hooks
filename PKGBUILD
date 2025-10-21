pkgname=secux-hooks
pkgver=1.1
pkgrel=1
pkgdesc='Secux Linux pacman hooks'
arch=('any')
license=('GPL3')
url=https://github.com/kolbanidze/secux-hooks

depends=()

source=(
  $_url/secux-os-release.hook
  $_url/secux-lsb-release.hook
  $_url/${pkgname}.hook
  $_url/${pkgname}-runner
)

sha512sums=('9c4ccf9daecb0074cf19622b1a512df1fa6cadb3ac2004f6f657963dbc2e60cd4d7fba1aee80274d5b1fbe15a9767b44d3bd3afbb7c5cd36ab0c45f03088e279'
            '32f131a5e383d7f5c86ff4adc81222e47911b2dd8d25efacce86bbdd53f13e6ccb83ae70127f6ee1052704373817370cf0d7e7b80a863d666c9d0a2e1bb68484'
            '20364062be82582df379fa4e7072e2add01f76c94340bad71b3ad7d1db28ee64be1d386a837730fac5ab1c42e78cabe842b63e79b3c744c5ae5248ef7a89da25'
            '432900349df6d0550c361a5ec599c45dc77197c0b51e83e385f94954074b3633e8a1c4833a0d56eb12a5bf1affa6a21dafc326bc1571baa19f83fef519eda5bc')

package() {
  local hooks=$pkgdir/usr/share/libalpm/hooks
  local bin=$pkgdir/usr/bin

  install -Dm644 secux-lsb-release.hook      $hooks/secux-lsb-release.hook
  install -Dm644 secux-os-release.hook       $hooks/secux-os-release.hook
  install -Dm644 ${pkgname}.hook           $hooks/${pkgname}.hook

  install -Dm755 ${pkgname}-runner         $bin/${pkgname}-runner
}
