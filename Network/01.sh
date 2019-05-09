#!/bin/bash
ifconfig -a | grep UP | cut -d : -f1
