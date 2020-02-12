#!/bin/bash

for i in $(cat < "hostfile.txt"); do
  if [[ "$i" != *"slots"* ]]; then
    scp hostfile.txt $i:~
  fi
done