#!/usr/bin/env fish
set tctl_temp (sensors | grep "Tctl" | grep -o '[0-9]\+' | awk 'NR==1 {print $1}')
set color_ok "#83a598"
set color_warn "#fabd2f"
set color_crit "#fb4934"
set color $color_ok

if test "$tctl_temp" -ge 80
    set color $color_crit
else if test "$tctl_temp" -ge 60
    set color $color_warn
else
    set color $color_ok
end


echo "<span color='$color'></span> $tctl_temp °C"

