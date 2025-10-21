pkgname=secux-hooks
pkgver=1.0
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

sha512sums=('32ca759b5fa34739fc1c6d198fa6157844c8332986e8ec59d7386bd5151a887d1de35a8e00b3881aae1fe518702965895807c1b6c5b70cb8a4a515c69572351c'
            '9182334ea1bfc715eeb1ebd8ab99244e1d972c8bb8bba996c06ebb2d0e4d07ccfde1f61f92b478baa88c709cc24bcf1a7136bee143d1bc60a5a16d9ca72b95c8'
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
