#!/bin/bash

echo "#!sba:log"                                              >         "../build/out/sasha.log"
echo '#a=_sivizius'                                           >>        "../build/out/sasha.log"
echo '#b=ascii\\n'                                            >>        "../build/out/sasha.log"
echo '#c=2016-02-10_17:21:05_UTC+0100'                        >>        "../build/out/sasha.log"
echo -n '#d='                                                 >>        "../build/out/sasha.log"
date "+%Y-%m-%d_%H:%M:%S"                                     >>        "../build/out/sasha.log"
echo '#f=/sba/out/sasha.log'                                  >>        "../build/out/sasha.log"
echo '#l=bash/en'                                             >>        "../build/out/sasha.log"
echo '#p=/sba/doc/licenses/LICENCE.txt'                       >>        "../build/out/sasha.log"
echo '#t=logfile for sasha'                                   >>        "../build/out/sasha.log"
echo '#v=0.9.1.0-»Amanita muscaria«'                          >>        "../build/out/sasha.log"
../build/bin/fasm "sasha.fasm" "../build/lib/sasha"           | tee -a  "../build/out/sasha.log"

echo "== Hex it? =="                                          | tee -a  "../build/out/sasha.log"
  read -p "" yn
  case "$yn" in
    ""|y|Y|j|J|yes|Yes|ja|Ja)
      echo "== Binary -> Hex =="                              | tee -a  "../build/out/sasha.log"
      hexedit "../build/lib/sasha"
   ;;
  esac
