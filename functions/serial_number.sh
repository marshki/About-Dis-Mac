#!/bin/bash
# Serial number 

serial_number () {

  local serialnum01=$(system_profiler SPHardwareDataType |awk '/Serial/'|sed 's/^.*: //')  #safer
  local serialnum02=$(system_profiler SPHardwareDataType| awk '/Serial/ {print $4}')       #cleaner 

  #write_header "Serial Number"
  printf "%s\\n" "${serialnum01}"
  printf "%s\\n" "${serialnum02}"
  #printf "%s\\n" ""
}

serial_number
