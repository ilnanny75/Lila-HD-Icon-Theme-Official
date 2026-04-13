# Maintainer: IlNanny <https://github.com/ilnanny75>
# Contributor: Lila HD Community

pkgname=lila-hd-icon-theme
pkgver=3.0
pkgrel=1
pkgdesc="Professional, colorful HD icon theme (2026 Reboot). 4 years of handcrafted SVG icons."
arch=('any')
url="https://github.com/ilnanny75/Lila-HD-Icon-Theme-Official"
license=('GPL3')
depends=('hicolor-icon-theme')
# Questo dice ad Arch di scaricare il pacchetto direttamente dal tuo nuovo GitHub
source=("https://github.com/ilnanny75/Lila-HD-Icon-Theme-Official/archive/refs/tags/v${pkgver}.tar.gz")
sha256sums=('SKIP')

package() {
  # Crea la cartella di destinazione nel sistema
  install -d "${pkgdir}/usr/share/icons"
  
  # Copia tutte le varianti Lila e i cursori
  cp -r "${srcdir}/Lila-HD-Icon-Theme-Official-${pkgver}/Lila_HD"* "${pkgdir}/usr/share/icons/"
}
