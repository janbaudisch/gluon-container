#!/bin/sh

set -e

[ -z "$GLUON_VERSION" ] && echo >&2 "No gluon version set." && exit 1
[ -z "$SITE_SOURCE" ] && echo >&2 "No site source specified." && exit 1
[ -z "$SITE_VERSION" ] && echo >&2 "No site version specified." && exit 1

[ ! -z "$GLUON_SOURCE" ] && GLUON_SOURCE="https://github.com/freifunk-gluon/gluon.git"

echo "Cloning gluon ${GLUON_VERSION} from ${GLUON_SOURCE} ..."
git clone $GLUON_SOURCE /build -b $GLUON_VERSION

echo "Cloning site ${SITE_VERSION} from ${SITE_SOURCE} ..."
git clone $SITE_SOURCE /build/site -b $SITE_VERSION

echo "Updating ..."
make update

echo "Building ..."
make

echo "Finished building images!"
