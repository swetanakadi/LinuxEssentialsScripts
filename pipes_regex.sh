#!/bin/bash

cut -d' ' -f1 /etc/services | cut -f1 | sort -u | grep "^[
A-Za-z]" > uniqueservices.txt && wc -l uniqueservices.txt
340 uniqueservices.txt