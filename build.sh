#!/bin/sh
set -e

rm -f dist/logical-crafting.zip
zip -r dist/logical-crafting.zip data pack.mcmeta -x "*.DS_Store" -x "*.rb"
