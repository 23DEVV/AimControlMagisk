#!/system/bin/sh

# Basic configuration for the module
SKIPMOUNT=false
PROPFILE=false
POSTFSDATA=false
LATESTARTSERVICE=true

# Function to check the Magisk version
check_magisk_version() {
  if [ "$MAGISK_VER_CODE" -lt 21000 ]; then
    abort "Magisk 21.0 or higher is required!"
  fi
}

# Function to clear system cache for optimal performance
clear_cache() {
  echo "Clearing system cache..."
  rm -rf /data/cache/*
  rm -rf /data/dalvik-cache/*
}

# Execute functions during installation
check_magisk_version
clear_cache
