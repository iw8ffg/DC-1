#!/bin/bash

dload_dir=/DPC-COVID19/dati-andamento-nazionale

if [ -d "$dload_dir" ]; then
  echo "$dload_dir esiste"
        if [ "$(ls -A $dload_dir)" ]; then
                echo "$dload_dir esiste e non e' vuota."
                exit 0
        else
                echo "$dload_dir esiste ed e' vuota"
                exit 255
        fi
else
  echo "$dload_dir non esiste"
  git clone https://github.com/pcm-dpc/COVID-19 /DPC-COVID19
fi
