#!/usr/bin/env bash

TARGET="$1"
if [ -z "$TARGET" ]; then
	echo "Error: require param 1: target folder." >&2
	exit 1
fi

if [ -e "$TARGET" ]; then
	echo "Error: $TARGET must NOT exists." >&2
	exit 1
fi

cd "$(dirname "$(realpath "${BASH_SOURCE[0]}")")"
cd ..

mkdir -p "$TARGET"

cp -r lds \
	lib \
	"$TARGET"
	
cp -r CHANGELOG.md \
	LICENSE \
	README.md \
	scripts/asm.cmake \
	scripts/kendryte-package.json \
	"$TARGET"
