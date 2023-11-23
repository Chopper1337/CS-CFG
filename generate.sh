#!/bin/bash

# Settings
sensitivity="0.9"
sensitivity_opt="1.8"
maxfps="999"
menufps="144"
gamma="2.3"
volume="1"
crosshaircode="CSGO-Mhef3-Un2pm-V2irv-mBNa8-US88F"

# Keyboard - movement
forward="w"
back="s"
left="a"
right="d"
walk="shift"
jump="backspace"
crouch="ctrl"
crouch_opt="space"

# Keyboard - communication
globalchat="enter"
teamchat="."
voicechat="v"
ping="mouse3"

# Personalisation
yourname="Chopper"
yourrepo="https://github.com/Chopper1337/CS-CFG/" # If you created your own fork, link it here

# Timestamps
month=$(date "+%b")
year=$(date "+%Y")
date=$(date "+%d/%m/%y")


# Read the template.cfg file and substitute variable values
sed \
  -e "s|{{sensitivity}}|$sensitivity|g" \
  -e "s|{{sensitivity_opt}}|$sensitivity_opt|g" \
  -e "s|{{maxfps}}|$maxfps|g" \
  -e "s|{{menufps}}|$menufps|g" \
  -e "s|{{gamma}}|$gamma|g" \
  -e "s|{{volume}}|$volume|g" \
  -e "s|{{forward}}|$forward|g" \
  -e "s|{{back}}|$back|g" \
  -e "s|{{left}}|$left|g" \
  -e "s|{{right}}|$right|g" \
  -e "s|{{walk}}|$walk|g" \
  -e "s|{{jump}}|$jump|g" \
  -e "s|{{crouch}}|$crouch|g" \
  -e "s|{{crouch_opt}}|$crouch_opt|g" \
  -e "s|{{globalchat}}|$globalchat|g" \
  -e "s|{{teamchat}}|$teamchat|g" \
  -e "s|{{voicechat}}|$voicechat|g" \
  -e "s|{{ping}}|$ping|g" \
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
  -e "s|{{globalchat}}|$globalchat|g" \
  -e "s|{{teamchat}}|$teamchat|g" \
  -e "s|{{voicechat}}|$voicechat|g" \
  -e "s|{{sensitivity}}|$sensitivity|g" \
  -e "s|{{sensitivity_opt}}|$sensitivity_opt|g" \
  template.md > README.md

echo "Config generated successfully: autoexec.cfg"
