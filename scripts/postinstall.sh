#!/bin/bash

set -euo pipefail

tgt_dir=../../jaeger-client
echo $tgt_dir

rm -rf $tgt_dir || true
cp -r ../ ../../
rm -rf ../../@rmfitzpatrick/jaeger-client
if [ -z "$(ls -A ../../@rmfitzpatrick)" ]; then
    rm -rf ../../@rmfitzpatrick
fi
