#!/bin/bash

if [[ $(xrandr | grep " connected" | wc -l) == 2 ]]
then
	xrandr --output VGA1 --auto --left-of eDP1
	bspc monitor ^1 -d "main" "web" "term" "im" "media" "sys" "misc"
	bspc monitor ^2 -d "main" "web" "term" "im" "media" "sys" "misc"

	bspc config -m ^1 window_gap 40
	bspc config -m ^2 window_gap 40
	bspc config -m ^1 top_padding 0
	bspc config -m ^2 top_padding 26
else
	bspc monitor -d "main" "web" "term" "im" "media" "sys" "misc"

	bspc config -m ^1 window_gap 40
	bspc config top_padding 26
fi

eval $(cat ~/.fehbg)
