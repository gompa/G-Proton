#!/bin/bash
export build_name=G-Proton-0.2
make redist

cd build/
tar -zcvf $build_name.tar.gz $build_name
