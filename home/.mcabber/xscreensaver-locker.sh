#!/bin/bash

mcabber_fifo_command() {
    cmd=$1
    if [ -p ~/.mcabber/mcabber.fifo ]
    then
        echo "Executing command: $cmd"
        echo "$cmd" > ~/.mcabber/mcabber.fifo
    fi
}

process() {
    while read input; do
        case "$input" in
            UNBLANK*) mcabber_fifo_command "/status online" ;;
            LOCK*)    mcabber_fifo_command "/status notavail" ;;
        esac
    done
}

xscreensaver-command -watch | process
