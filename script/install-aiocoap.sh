#!/bin/sh
git clone --depth 1 https://git.fslab.de/jkonra2m/tinydtls.git
cd tinydtls
autoreconf
./configure --with-ecc --without-debug
cd cython
python3 setup.py install

cd ../..
git clone https://github.com/chrysn/aiocoap
cd aiocoap
git reset --hard 3286f48f0b949901c8b5c04c0719dc54ab63d431
python3 -m pip install --upgrade pip setuptools
python3 -m pip install .
