#!/bin/bash
echo "Kill processes including: $1"

for pid in $(ps -ef | grep $1 | awk '{print $2}')
  do kill -9 $pid;
  echo $pid
done

