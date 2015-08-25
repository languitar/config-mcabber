#!/bin/bash
if [ -p ~/.mcabber/mcabber.fifo ]
then
    echo "/disconnect" > ~/.mcabber/mcabber.fifo
fi
