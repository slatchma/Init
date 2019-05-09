#!/bin/bash
ifconfig en1 | grep "ether " | cut -c 8- | rev | cut -c 2- | rev
