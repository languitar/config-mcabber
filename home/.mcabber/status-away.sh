#!/bin/bash
if [ -p ~/.mcabber/mcabber.fifo ]
then
    echo "/status away" > ~/.mcabber/mcabber.fifo
fi
