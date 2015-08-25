#!/bin/bash
if [ -p ~/.mcabber/mcabber.fifo ]
then
    echo "/connect" > ~/.mcabber/mcabber.fifo
fi
