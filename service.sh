#!/system/bin/sh

# Adjust pointer speed for better aim control
settings put system pointer_speed 5

# Reduce touch latency by adjusting specific kernel parameters
echo 1 > /sys/class/touch/sync_control
echo 5 > /proc/sys/kernel/sched_latency_ns
echo 1 > /proc/sys/kernel/sched_rt_runtime_us

# Optional: You can add more tweaks here for further control

