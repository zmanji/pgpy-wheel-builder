#!/bin/bash

set -euox pipefail

wget https://github.com/zmanji/reproducible-wheel-builder/releases/download/v0.0.4/main.pex
chmod +x main.pex


wget https://files.pythonhosted.org/packages/f8/68/5e285ba9465550a48e837b08b27fa99ef238618f6085a1464afaa4dc8426/PGPy-0.6.0.tar.gz
tar xvzf PGPy-0.6.0.tar.gz

PEX_PYTHON="python3.10" SOURCE_DATE_EPOCH=0 \
  ./main.pex --lock setuptools.lock --src ./PGPy-0.6.0 --out ./out --dist wheel


