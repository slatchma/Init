#!/bin/bash
cat /etc/passwd | cut -d ":" -f1 -f3 -f6
