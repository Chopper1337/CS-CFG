#!/bin/bash

# Settings
sensitivity="0.9"
sensitivity_opt="1.8"
maxfps="999"
menufps="144"
gamma="2.3"
volume="1"
maxping="30"
crosshaircode="CSGO-Mhef3-Un2pm-V2irv-mBNa8-US88F"
resolution="1280x960"

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
commsping="mouse3"

# Personalisation
yourname="Chopper"
yourrepo="https://github.com/Chopper1337/CS-CFG/" # If you created your own fork, link it here
monitor="ASUS XG258Q"
GPU="RX 6800"
CPU="R5 5600X"

# Laptop (Optional)
sensitivity_laptop="1.8"
sensitivity_laptop_opt="3.6"

# HVH (Optional)
sensitivity_hvh="5"

# Timestamps (Do not modify)
month=$(date "+%B")
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
  -e "s|{{commsping}}|$commsping|g" \
  -e "s|{{maxping}}|$maxping|g" \
  -e "s|{{yourname}}|$yourname|g" \
  -e "s|{{yourrepo}}|$yourrepo|g" \
  -e "s|{{resolution}}|$resolution|g" \
  -e "s|{{crosshaircode}}|$crosshaircode|g" \
  -e "s|{{month}}|$month|g" \
  -e "s|{{year}}|$year|g" \
  -e "s|{{date}}|$date|g" \
  template.cfg > autoexec.cfg

# Read the template_laptop.cfg file and substitute variable values
sed \
  -e "s|{{sensitivity_laptop}}|$sensitivity_laptop|g" \
  -e "s|{{sensitivity_laptop_opt}}|$sensitivity_laptop_opt|g" \
  template_laptop.cfg > laptop.cfg

# Read the template_hvh.cfg file and substitute variable values
sed \
  -e "s|{{sensitivity_hvh}}|$sensitivity_hvh|g" \
  template_hvh.cfg > hvh.cfg

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
  -e "s|{{resolution}}|$resolution|g" \
  -e "s|{{monitor}}|$monitor|g" \
  -e "s|{{gpu}}|$gpu|g" \
  -e "s|{{cpu}}|$cpu|g" \
  template.md > README.md

echo "Config generated successfully: autoexec.cfg"
