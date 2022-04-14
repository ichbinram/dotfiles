#!/bin/zsh
DISP=$1
if swaymsg -t get_outputs -r | jq -e '.[] | select(.name=="'${DISP}'") | .active' ; then {
    swaymsg output ${DISP} disable
} else {
swaymsg output ${DISP} enable
}
fi
