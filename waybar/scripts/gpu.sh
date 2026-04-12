#!/bin/bash

read TEMP UTIL MEM <<< $(nvidia-smi --query-gpu=temperature.gpu,utilization.gpu,memory.used --format=csv,noheader,nounits)

MEMGB=$(awk "BEGIN {printf \"%.1f\", $MEM/1024}")

echo "󰢮 ${TEMP}°  ${UTIL}%  ${MEMGB}GB"