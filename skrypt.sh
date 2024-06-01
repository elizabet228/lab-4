#!/bin/bash
case $1 in
--date) date ;;
*) echo "Invalid option" ;;
esac
--logs) for i in {1..100}; do echo "log$i.txt - skrypt.sh - $(date)" > log$i.txt; done ;;
