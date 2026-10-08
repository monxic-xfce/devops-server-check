
#!/usr/bin/env bash

set -u

echo "================================"
echo "       SERVER HEALTH CHECK"
echo "================================"

echo ""
echo "[1] Hostname"
hostname

echo ""
echo "[2] Uptime"
uptime

echo ""
echo "[3] Memory Usage"
free -h

echo ""
echo "[4] Disk Usage"
df -h /

echo ""
echo "[5] CPU Information"
nproc

echo ""
echo "================================"
echo "       CHECK COMPLETED"
echo "================================"
