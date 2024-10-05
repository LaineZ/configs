#!/usr/bin/fish
set vram_usage_mb (nvidia-smi -q | grep "Used GPU Memory" | grep -o '[0-9]\+' | awk 'NR==1 {print $1}')

echo "<span color='#fabd2f'>GPU  </span>$vram_usage_mb MiB"
