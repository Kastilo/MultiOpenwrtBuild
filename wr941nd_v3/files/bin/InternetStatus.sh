#!/bin/sh

# Leds Colors and Status
LED_SUCESS="/sys/class/leds/tp-link:green:qss/brightness"
LED_ERROR="/tmp/InternetStatusLEDError.txt"

# Loop Intervall
test_intervall="2s"

# Loop
while true; do 
  if wget -4 -O /tmp/tested --spider "http://ftp.debian.org";then
    echo "1" > $LED_SUCESS
    echo "0" > $LED_ERROR
  else
    echo "0" > $LED_SUCESS
    echo "1" > $LED_ERROR
  fi
  sleep $test_intervall
done
