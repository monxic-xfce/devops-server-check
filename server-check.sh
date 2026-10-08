
#!/usr/bin/env bash

set -u

echo "================================"
echo "       SERVER HEALTH CHECK"
echo "================================"

echo ""
echo "[1] Hostname: $(hostname)"

echo ""
echo "[2] Uptime"
uptime -p

echo ""
echo "[3] Memory Usage"
free -h

echo ""
echo "[4] Disk Usage"
df -h /

DISK_USAGE=$(df / | awk 'NR==2 {gsub("%","",$5); print $5}')

echo ""
echo "[5] Disk Health Status"

if [ "$DISK_USAGE" -ge 90 ]; then
    echo "WARNING: Disk usage is ${DISK_USAGE}%"
elif [ "$DISK_USAGE" -ge 80 ]; then
    echo "NOTICE: Disk usage is ${DISK_USAGE}%"
else
    echo "OK: Disk usage is ${DISK_USAGE}%"
fi

echo ""
echo "[6] CPU Information"
nproc

echo ""
echo "================================"
echo "       CHECK COMPLETED"
echo "================================"

