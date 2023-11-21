#!/bin/bash

# Set your variable values
yourname="Chopper"
sensitivity0="0.9"
sensitivity1="1.8"
maxfps="999"
menufps="144"
gamma="2.3"
volume="1"
month=$(date "+%b")
year=$(date "+%Y")
date=$(date "+%d/%m/%y")


# Read the template file and substitute variable values
sed \
  -e "s|{{sensitivity0}}|$sensitivity0|g" \
  -e "s|{{sensitivity1}}|$sensitivity1|g" \
  -e "s|{{maxfps}}|$maxfps|g" \
  -e "s|{{menufps}}|$menufps|g" \
  -e "s|{{yourname}}|$yourname|g" \
  -e "s|{{gamma}}|$gamma|g" \
  -e "s|{{volume}}|$volume|g" \
  -e "s|{{month}}|$month|g" \
  -e "s|{{year}}|$year|g" \
  template.cfg > autoexec.cfg

sed \
  -e "s|{{date}}|$date|g" \
  template.md > README.md

echo "Config generated successfully: autoexec.cfg"
