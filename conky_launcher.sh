#!/bin/bash

DIR=$(dirname $0)

log() {
  echo "<1>[Conky] $1"
  return
}

launch() {
  RUN=$(ps aux | grep conky | grep $1)

  if [ -z "$RUN" ]; then
    conky -c "${DIR}/${1}" &
    log "started $1"
  else
    log "$1 is already running"
  fi
}

main() {
  launch "clocks"
  launch "side_bar"
}

log "Called by $USER@$HOSTNAME"
main
