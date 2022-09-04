#!/bin/bash

cd `dirname $0`
echo "Executing make distclean from buildroot directory $(pwd)"
make -C buildroot distclean
