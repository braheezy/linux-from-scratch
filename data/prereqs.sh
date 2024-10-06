#!/bin/bash

set -euo pipefail

sudo yum install -y bash binutils bison coreutils diffutils findutils gawk gcc grep gzip m4 make patch perl python3 sed tar texinfo xz vim wget

sudo ln -s /usr/bin/bison /usr/bin/yacc
