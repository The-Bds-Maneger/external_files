#!/bin/bash
set -ex
git clone https://github.com/pmmp/php-build-scripts.git /tmp/php
cd /tmp/php
. compile.sh -j$(nproc)
ls -la
zip -q /tmp/out/Linux_$(uname -m | sed 's|86-||g')_php.zip -r bin/


exit 0
