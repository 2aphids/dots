#!/bin/sh
# play videos and then be prompted for their deletion
# for quickly auditing large amounts of video files
# best used with $(ls -S) as the argument as to sort videos by file size
for arg; do
  mpv $arg
  rm -i $arg
done
