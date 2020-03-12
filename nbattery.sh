#!/bin/bash

BATTERY_DIR="/sys/class/power_supply/BAT0"

_get_battery_status() {
    local _current_status=$(cat $BATTERY_DIR/status)
	local _current_capacity=$(cat $BATTERY_DIR/capacity)

    if [ "$_current_capacity" -le "90" ]; then
        printf 
    elif [ "$_current_capacity" -le "80" ]; then
        printf 
    elif [ "$_current_capacity" -le "70" ]; then
        printf 
    elif [ "$_current_capacity" -le "60" ]; then
        printf 
    elif [ "$_current_capacity" -le "50" ]; then
        printf 
    elif [ "$_current_capacity" -le "40" ]; then
        printf  
    elif [ "$_current_capacity" -le "30" ]; then
        printf 
    elif [ "$_current_capacity" -le "20" ]; then
        printf 
    elif [ "$_current_capacity" -le "10" ]; then
        printf 
    else
        printf 
    fi

    [ "$_current_status" = "Charging" ] && printf   
}

_get_battery_status
