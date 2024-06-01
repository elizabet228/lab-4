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
  -h) echo "Available options: --date, -d, --logs [number], -l [number], --help, -h" ;;
  -l) num=${2:-30}; for i in $(seq 1 $num); do echo "log$i.txt - skrypt.sh - $(date)" > log$i.txt; done ;;
  -d) date ;;
  --init) git clone https://github.com/elizabet228/lab-4.git && export PATH=$PATH:$(pwd)/lab-4 ;;
  --error) num=${2:-100}; for i in $(seq 1 $num); do mkdir -p error$i && echo "error$i.txt - skrypt.sh - $(date)" > error$i/error$i.txt; done ;;
  -e) num=${2:-100}; for i in $(seq 1 $num); do mkdir -p error$i && echo "error$i.txt - skrypt.sh - $(date)" > error$i/error$i.txt; done ;;
