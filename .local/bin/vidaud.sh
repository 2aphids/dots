#!/bin/sh
# play videos and then be prompted for their deletion
# for quickly auditing large amounts of video files
#
# vidaud.sh *
# vidaud.sh $(ls -S) # sort by file size
for arg; do
  mpv $arg
  rm -i $arg
done
