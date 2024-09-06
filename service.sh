#!/system/bin/sh

# Monitor touch events using `getevent`
monitor_touch_events() {
  getevent -ql /dev/input/event2 | while read line; do
    if echo "$line" | grep -q "ABS_MT_POSITION_Y"; then
      Y=$(echo "$line" | awk '{print $NF}')
      if [ "$Y" -gt 600 ]; then
        input tap 500 600
      fi
    fi
  done
}

# Log message to indicate the service has started
echo "AimControlMagisk - Service started." > /data/local/tmp/aimcontrol.log

# Run the touch event monitor in the background
monitor_touch_events &


