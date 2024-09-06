#!/system/bin/sh

# Improve touch sensitivity during system startup
optimize_touch_settings() {
  echo "Optimizing touch sensitivity..."
  echo 1 > /sys/class/touch/sensitivity
  echo 0.9 > /sys/class/touch/pressure_threshold
}

# Execute touch optimization during startup
optimize_touch_settings
