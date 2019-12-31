#!/bin/bash

echo `ip addr` | mail -s "startup ip addr" "coldgemini@foxmail.com"
