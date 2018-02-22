#!/bin/bash
# Switch screen to standby or on via cec

case "$1" in
  on)
    echo "on 0000" | cec-client -d 1 -s "standby 0" RPI
    ;;
  standby)
    echo "standby 0000" | cec-client -d 1 -s "standby 0" RPI
    ;;
  *)
    echo "Pass 'on' or 'standby' as arguments" >&2
    exit 1
    ;;
esac
