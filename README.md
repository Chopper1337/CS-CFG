# Chopper's Counter-Strike: Global Offensive Configuation
 My CSGO autoexec.cfg and autowelcome.cfg
 
 "Chopper" not "chopper", difference is he's pro, I'm not :))))
 
 Here's his settings [ProSettings.net](https://prosettings.net/counterstrike/chopper/)
 
 This won't change your video (Resolution etc.) options but it will change everything else.
 
 **Mouse**: 1khz polling rate, 800dpi, 6/11 Windows sens. and 1.5 in game sens. (Gigabyte M6900)
 
 **Video**: 1920x1080, 144hz (Sometimes 1440x1080) (Benq Zowie XL2411P, RX580)
 
# Features
* Modified rates based on ping
* Jump throw bind
* Togglable scroll BHOP
* Warmup with bots
* Easy adjustments for game and voice volume
* Various sounds for switching weapon, pressing the use key etc. (From FranzJ)
* Radar size adjustment bind
* Clearing of decals
* Lowered GPU power usage in menus
* Many other adjustments...

# Installation
**Backup your original config!**

1. Download [autoexec.cfg](https://raw.githubusercontent.com/Chopper1337/CSGO-CFG/master/autoexec.cfg) and open in any text editor. 
(Optional: Download [autowelcome.cfg](https://raw.githubusercontent.com/Chopper1337/CSGO-CFG/master/autowelcome.cfg))

2. Change `cl_interp` and `cl_interp_ratio` according to your average ping, follow this table:

| Ping (ms) | cl_interp | cl_interp_ratio    |
|-----------|-----------|-------------------|
| 1-29      | 0.007813  | 1 |
| 30-59     | 0.015625  | 1 |
| 60-89     | 0.015625  | 2 |
| 90-100    | 0.03125   | 2 |

3. Change `freq` in the "Video" section (Line 31) to your monitors refresh rate

4. Change `hud_scaling` in the "HUD" section (Line 69) according to your preference.

5. Drop the autoexec.cfg (and autowelcome.cfg ) into the following directory
`\Counter-Strike Global Offensive\csgo\cfg\`<br>
(Default location:
`C:\Program Files (x86)\Steam\steamapps\common\Counter-Strike Global Offensive\csgo\cfg\`)

Changes should be automatically applied, if you change a setting through console while in game
you can press the delete key to re-run the autoexec.cfg and it'll revert to the setting specified there.

# Launch Options

`-nojoy -novid  -d3d9ex -threads 12 -tickrate 128 -console -high +cl_updaterate 128 +r_dynamic 0  -r_emulate_g`

# Binds
**Middle click**: Toggles scroll wheel between BHOP and weapon switching

**Insert**: Enters bot warmup

**Home**: Spectate

**Delete**: Executes autoexec.cfg again

**Mouse 4, Mouse 5**: Equip Smoke or Flashbang

**Square Brackets**: Adjust radar zoom

**Enter**: Global chat

**Backslash**: Team chat

**F2**: Rebuy

**E**: Use key

**F**: Inspects weapon

**N**: Jump throw, equip a nade, hold mouse1 and then hold N to jump throw

**T**: Throw molotov / Show mouse on scoreboard

**V**: Voice chat

**Z,X,C**: Radio commands

**7**: Toggles noclip

**0**: Toggles voice_enable

**Negative/Minus**: Toggles voice_scale

**Equals**: Adjusts game volume between the following values `1 0.7 0.1 0`

Probably missed some, read through the config, make your own changes

# Sources

[Rates (Net code)](https://steamcommunity.com/sharedfiles/filedetails/?id=795437982)

[Sound settings](https://steamcommunity.com/sharedfiles/filedetails/?id=703059693)

[Budi's CFG](https://gist.github.com/nickbudi/3916475)

[Launch options](https://totalcsgo.com/launch-options)
