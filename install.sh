#!/bin/bash

func_error() {
  echo "Error installing"
  exit 1
}

[ -z "$1" ] && DESTDIR="/" || DESTDIR="$1"
[ -d "$DESTDIR" ] || mkdir -p "$DESTDIR" || func_error

cd "$(dirname "${BASH_SOURCE[0]}")"
# daemon and configuration
install -D -m755 "usr/bin/repo-check" "$DESTDIR/usr/bin/repo-check" || func_error
install -D -m755 "usr/bin/repo-update" "$DESTDIR/usr/bin/repo-update" || func_error
install -D -m644 "etc/repo-scripts.conf" "$DESTDIR/etc/repo-scripts.conf" || func_error

exit 0
