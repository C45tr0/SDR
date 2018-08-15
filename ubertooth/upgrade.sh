#!/bin/bash

# Need to make board specific file
cd /root/ubertooth/firmware/bluetooth_rxtx
make

# Push new firmware
ubertooth-dfu -d bluetooth_rxtx.dfu -r