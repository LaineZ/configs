#!/usr/bin/fish
set gpu_usage (nvidia-smi -q | grep "Gpu" | grep -o '[0-9]\+' | awk '{print $1}')
echo "<span color='#fabd2f'>  GPU </span>$gpu_usage%"
