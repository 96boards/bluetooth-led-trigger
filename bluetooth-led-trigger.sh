#!/bin/sh

# enable bluetooth power status indicator

bt_id=`rfkill list bluetooth | awk '{print $1}' | grep : | sed s'/://g'`
bt_trigger_str="rfkill${bt_id}"

echo ${bt_trigger_str} > /sys/class/leds/bt_active/trigger
