#!/bin/bash

ARCHIVE="repo-scripts"
[ -d "${ARCHIVE}" ] && rm -rf "${ARCHIVE}"

mkdir -p "${ARCHIVE}/usr/"{bin,lib/systemd/system}
mkdir -p "${ARCHIVE}/etc"

cp "sources/repo-check" "${ARCHIVE}/usr/bin/"
cp "sources/repo-clear" "${ARCHIVE}/usr/bin/"
cp "sources/repo-daemon" "${ARCHIVE}/usr/bin/"
cp "sources/repo-update" "${ARCHIVE}/usr/bin/"
cp "sources/repo-sync" "${ARCHIVE}/usr/bin/"
cp "sources/repo-scripts.conf" "${ARCHIVE}/etc/"
cp "sources/repo-daemon.service" "${ARCHIVE}/usr/lib/systemd/system/"
cp "install.sh" "${ARCHIVE}/"
cp {AUTHORS,COPYING} "${ARCHIVE}/"

VERSION=$(grep Version sources/repo-check | awk '{printf $5;}')
tar -cf - "${ARCHIVE}" | xz -9 -c - > "${ARCHIVE}-${VERSION}-src.tar.xz"
rm -rf "${ARCHIVE}"

# update PKGBUILD
MD5SUMS="$(md5sum "${ARCHIVE}-${VERSION}-src.tar.xz" | awk '{print $1}')"
sed -i "s/md5sums=('[0-9a-f]\{32\}')/md5sums=('${MD5SUMS}')/" PKGBUILD
sed -i "s/pkgver=[0-9.]\{5\}/pkgver=${VERSION}/" PKGBUILD
