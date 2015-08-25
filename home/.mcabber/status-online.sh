#!/bin/bash
if [ -p ~/.mcabber/mcabber.fifo ]
then
    echo "/status online" > ~/.mcabber/mcabber.fifo
fi
