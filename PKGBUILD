# Maintainer: Evgeniy "arcanis" Alexeev <esalexeev@gmail.com>

pkgname=repo-scripts
pkgver=1.5.0
pkgrel=1
pkgdesc="A set of scripts to work with your repository"
arch=('any')
url="https://github.com/arcan1s/repo-scripts"
license=("GPLv3")
depends=('yaourt')
source=(https://github.com/arcan1s/repo-scripts/releases/download/V.${pkgver}/${pkgname}-${pkgver}-src.tar.xz)
md5sums=('51cc68786ddd3c596b4f816d2b73a7e3')
backup=('etc/repo-scripts.conf')

package() {
  "${srcdir}/${pkgname}/install.sh" "${pkgdir}"
}
