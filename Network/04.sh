#!/bin/bash
netstat -nr | grep "default" | head -n 1 |tr -s ' ' | cut -d " " -f2
