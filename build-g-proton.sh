#!/bin/bash
export build_name=G-Proton-0.2
make redist

cd build/
tar -cvf $build_name.tar $build_name
