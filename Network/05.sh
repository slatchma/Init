#!/bin/bash
nslookup www.slash16.org | grep "Address" | head -n 1 | cut -f 2
