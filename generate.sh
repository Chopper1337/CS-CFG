#!/bin/bash

# Settings
sensitivity0="0.9"
sensitivity1="1.8"
maxfps="999"
menufps="144"
gamma="2.3"
volume="1"
crosshaircode="CSGO-s3oAd-CBNK9-aOct6-Oh7GE-TuFKO"

# Personalisation
yourname="Chopper"
yourrepo="https://github.com/Chopper1337/CS-CFG/" # If you created your own fork, link it here

# Timestamps
month=$(date "+%b")
year=$(date "+%Y")
date=$(date "+%d/%m/%y")


# Read the template.cfg file and substitute variable values
sed \
  -e "s|{{sensitivity0}}|$sensitivity0|g" \
  -e "s|{{sensitivity1}}|$sensitivity1|g" \
  -e "s|{{maxfps}}|$maxfps|g" \
  -e "s|{{menufps}}|$menufps|g" \
  -e "s|{{gamma}}|$gamma|g" \
  -e "s|{{volume}}|$volume|g" \
  -e "s|{{yourname}}|$yourname|g" \
  -e "s|{{yourrepo}}|$yourrepo|g" \
  -e "s|{{month}}|$month|g" \
  -e "s|{{year}}|$year|g" \
  template.cfg > autoexec.cfg

# Update README.md
sed \
  -e "s|{{yourname}}|$yourname|g" \
  -e "s|{{date}}|$date|g" \
  -e "s|{{crosshaircode}}|$crosshaircode|g" \
  template.md > README.md

echo "Config generated successfully: autoexec.cfg"
