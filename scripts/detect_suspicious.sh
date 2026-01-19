#!/bin/bash
# Detect suspicious SSH login attempts from auth and syslog logs

LOG_FILES=("logs/auth.log.sample" "logs/syslog.sample")

echo "=== Suspicious SSH login attempts ==="

for log in "${LOG_FILES[@]}"; do
  if [ -f "$log" ]; then
    echo "Analyzing $log..."
    grep "Failed password" "$log" | awk '{print $1, $2, $3, $9, $11}' | sort | uniq -c | sort -nr
  else
    echo "Log file not found: $log"
  fi
done
