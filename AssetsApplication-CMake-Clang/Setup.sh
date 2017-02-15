#!/bin/bash
export CC=clang;
export CXX=clang++;
cmake -H. -Bbuild;
cmake --build build -- -j3;
