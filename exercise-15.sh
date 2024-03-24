#!/bin/bash

echo -p "[start | stop ] the sleep walking server?"
read action

case $action in
  start)
    echo "Starting the sleep walking server"
    /tmp/sleepwalkingserver.pid
    ;;
  stop)
    echo "Stopping the sleep walking server"
    kill $(cat /tmp/sleepwalkingserver.pid)
    ;;
  *)
    echo "Enter either start or stop"
    exit 1
    ;;
esac