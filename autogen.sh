#!/bin/sh -e

rm -rf config.cache build
mkdir build

aclocal
autoconf
autoheader
automake --add-missing

if test x$NOCONFIGURE = x; then
	echo "./configure $*"
	./configure "$@"
fi
