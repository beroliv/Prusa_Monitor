#!/bin/sh

CONTAINER_NAME="prusa-prusa_connect_rtsp-1"
HOST_IP="192.168.0.61"

while true; do
    if ping -c 1 -W 2 "$HOST_IP" > /dev/null 2>&1; then
        echo "Host erreichbar."
        if ! docker ps --format '{{.Names}}' | grep -q "$CONTAINER_NAME"; then
            echo "Container nicht gefunden, starte ihn..."
            docker start "$CONTAINER_NAME"
        fi
    else
        echo "Host nicht erreichbar."
        if docker ps --format '{{.Names}}' | grep -q "$CONTAINER_NAME"; then
            echo "Container läuft, stoppe ihn..."
            docker stop "$CONTAINER_NAME"
        fi
    fi
    sleep 30
done
