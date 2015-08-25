#!/bin/bash
if [ -p ~/.mcabber/mcabber.fifo ]
then
    echo "/status notavail" > ~/.mcabber/mcabber.fifo
fi
