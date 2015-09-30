# Maintainer: Evgeniy "arcanis" Alexeev <arcanis at archlinux dot org>

pkgname=repo-scripts
pkgver=1.6.0
pkgrel=1
pkgdesc="A set of scripts to work with your repository"
arch=('any')
url="https://github.com/arcan1s/repo-scripts"
license=("GPLv3")
depends=('devtools' 'yaourt' 'sudo')
source=(https://github.com/arcan1s/repo-scripts/releases/download/V.${pkgver}/${pkgname}-${pkgver}-src.tar.xz)
md5sums=('d8f837a936465a75c22b7b81869b8e35')

backup=('etc/repo-scripts.conf')
install=repo-scripts.install

package() {
  "${srcdir}/${pkgname}/install.sh" "${pkgdir}"
}
