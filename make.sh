#!/bin/bash

../build/bin/fasm "sasha.fasm" "../build/lib/sasha" 2>&1 | tee "../build/out/sasha.log"
