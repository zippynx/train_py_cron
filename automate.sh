#!/bin/bash

PYTHON_SCRIPT="hello_world.py"

INTERVAL=2

MAX_DURATION=10

START_TIME=$(date +%s)

while true; do
    echo "Menjalankan $PYTHON_SCRIPT pada $(date)"

    python3 $PYTHON_SCRIPT

    if [ $? -ne 0 ]; then
        echo "ERROR"
        break
    fi

    CURRENT_TIME=$(date +%s)
    ELAPSED_TIME=$((CURRENT_TIME - START_TIME))

    if [ $ELAPSED_TIME -ge $MAX_DURATION ]; then
        echo "Durasi selesai"
        break
    fi

    sleep $INTERVAL
done
