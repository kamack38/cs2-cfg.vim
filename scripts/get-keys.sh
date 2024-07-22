#!/usr/bin/env bash
# requires curl, sed and htmlq
# awk replaces f1-n with f1 f2 ... fn
curl -s 'https://developer.valvesoftware.com/wiki/Bind' | htmlq 'table tbody tr td:first-child' --text | sed '/^$/d' | awk '
  {
      if (match($0, /f1-([0-9]+)/, arr)) {
          n = arr[1]
          for (i = 1; i <= n; i++) {
              print "f" i
          }
      } else {
          print $0
      }
  }'
