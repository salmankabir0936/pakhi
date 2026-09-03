LOG_FILE="server.log"
if [ ! -f "$LOG_FILE" ]; then
echo "[!] ERROR: Specified log file not found: $LOG_FILE"
exit 1
fi
echo "SECURITY LOG ANALYSIS REPORT"
echo "[+] Generated On   : $(date)"
echo "[+] Target File    : $LOG_FILE"
FAILED_COUNT=$(grep -c "Failed password" "$LOG_FILE")
ERROR_404_COUNT=$(grep -c "404" "$LOG_FILE")
echo "[>] Failed Login Attempts : $FAILED_COUNT"
echo "[>] HTTP 404 Errors       : $ERROR_404_COUNT"
