#!/usr/bin/env bash
 
# Don't start snapserver if pi1 family, not enough processing power
if [ $BALENA_DEVICE_TYPE == "raspberry-pi" ]; then
  echo "Multi-room audio is disabled due to device type: Raspberry Pi (v1/Zero/Zero W)."
  exit 0
fi

# Start snapserver if multi room is enabled
if [[ -z $DISABLE_MULTI_ROOM ]]; then
  snapserver
else
  echo "Multi-room audio is disabled, not starting snapserver."
  exit 0
fi
