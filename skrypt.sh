#!/bin/bash
case $1 in
--date) date ;;
*) echo "Invalid option" ;;
esac
--logs) for i in {1..100}; do echo "log$i.txt - skrypt.sh - $(date)" > log$i.txt; done ;;
  --help) echo "Available options: --date, --logs [number], --help" ;;
  -h) echo "Available options: --date, --logs [number], --help" ;;
  -d) date ;;
  -l) num=${2:-30}; for i in $(seq 1 $num); do echo "log$i.txt - skrypt.sh - $(date)" > log$i.txt; done ;;
