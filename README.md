# Chopper's Counter-Strike: Global Offensive Configuation
 My CSGO autoexec.cfg and autowelcome.cfg
 
 "Chopper" not "[chopper](https://liquipedia.net/counterstrike/Chopper)", difference is he's pro, I'm not :))))
 
 Here's his settings [ProSettings.net](https://prosettings.net/counterstrike/chopper/)
 
 This won't change your video (Resolution etc.) options but it will change everything else.
 
 **Mouse**: 1khz polling rate, 800dpi, 6/11 Windows sens. and 1.5 in game sens. ([Logitech G PRO Wired](https://www.amazon.co.uk/gp/product/B07L9FJS98))
 
 **Video**: 1440x1080, 144hz, All settings on lowest ([Benq Zowie XL2411P](https://www.amazon.co.uk/BenQ-XL2411P-Sports-Adjustable-eQualizer/dp/B075JGL4WV), GTX 1080Ti)
 
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
* Surf Mode
* CSS viewmodel with minimum weapon movement
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

3. Change `hud_scaling` in the "HUD" section (Line 83) according to your preference.

4. Modify the crosshair in the crosshair section (Line 128) or delete that section entirely so it doesn't change your current crosshair.

5. Drop the autoexec.cfg (and autowelcome.cfg ) into the following directory
`\Counter-Strike Global Offensive\csgo\cfg\`<br>
(Default location:
`C:\Program Files (x86)\Steam\steamapps\common\Counter-Strike Global Offensive\csgo\cfg\`)

Changes should be automatically applied, if you change a setting through console while in game
you can press the delete key to re-run the autoexec.cfg (or type "exec autoexec" in console) and it'll revert to the setting specified there.

# Launch Options

`-nojoy -novid  -d3d9ex -threads [YOUR CPU THREAD COUNT HERE eg. 12] -tickrate 128 -console -high +cl_updaterate 128  -r_emulate_g`

# Binds
**Middle click**: Toggles scroll wheel between BHOP and weapon switching

**Insert**: Enters bot warmup

**Home**: Switch to Spectator

**Delete**: Executes autoexec.cfg again

**Mouse 4, Mouse 5**: Equip Smoke or Flash

**Square Brackets**: Adjust radar zoom

**Right Shift**: Surf mode (300fps limit, mouse4 and mouse5 are mapped to turn left and right)

**Enter**: Global chat

**Backslash**: Team chat

**F2**: Re-buy last loadout

**E**: Use key

**F**: Inspects weapon

**N**: Jump throw, equip a nade, hold mouse1 and then hold N to jump throw

**T**: Throw Molotov / Show mouse on scoreboard

**V**: Voice chat

**Z,X,C**: Radio commands

**7**: Toggles noclip and debug mode

**0**: Toggles voice_enable

**Negative/Minus**: Toggles voice_scale

**Equals**: Adjusts game volume between the following values `1 0.7 0.1 0`

**Comma**: Ping crosshair location

Probably missed some, read through the config, make your own changes

# Sources

[Rates (Net code)](https://steamcommunity.com/sharedfiles/filedetails/?id=795437982)

[Sound settings](https://steamcommunity.com/sharedfiles/filedetails/?id=703059693)

[Budi's CFG](https://gist.github.com/nickbudi/3916475)

[Launch options](https://totalcsgo.com/launch-options)
