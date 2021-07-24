#!/bin/bash

screen -S plot1 -d -m ~/chia-plotter/build/chia_plot \
      --count -1 \
      --poolkey <YOUR_POOLKEY> \
      --farmerkey <YOUR_FARMERKEY> \
      --finaldir /home/chia/out/ \
      --tmpdir /mnt/tmp1/ \
      --threads 16 \
      --buckets 256

screen -S plot2 -d -m bash -c "sleep 600 ; ~/chia-plotter/build/chia_plot" \
      --count -1 \
      --poolkey <YOUR_POOLKEY> \
      --farmerkey <YOUR_FARMERKEY> \
      --finaldir /home/chia/out/ \
      --tmpdir /mnt/tmp2/ \
      --threads 16 \
      --buckets 256
