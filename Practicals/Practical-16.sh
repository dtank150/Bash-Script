#!/bin/bash

PID_FILE="/tmp/sleep-walking-server.pid"
SERVER_SCRIPT="/tmp/sleep-walking-server"

if [ ! -x "$SERVER_SCRIPT" ]; then
    echo "Error: The sleep-walking-server script is not executable."
    exit 1
fi

start_server() {
    if [ -f "$PID_FILE" ]; then
        echo "Error: The server is already running."
        exit 1
    fi
    "$SERVER_SCRIPT" &
    echo "$!" > "$PID_FILE"
    echo "sleep-walking-server started."
}

stop_server() {
    if [ ! -f "$PID_FILE" ]; then
        echo "Error: The server is not running."
        exit 1
    fi
    kill "$(cat "$PID_FILE")"
    rm "$PID_FILE"
    echo "sleep-walking-server stopped."
}

case "$1" in
    start)
        start_server
        ;;
    stop)
        stop_server
        ;;
    *)
        echo "Usage: $0 start|stop"
        exit 1
        ;;
esac

exit 0
