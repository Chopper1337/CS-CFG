# Chopper's Counter-Strike: Global Offensive Configuation
My CSGO config, based on [Budi's config](https://gist.github.com/nickbudi/3916475).

This config is by "Chopper" not "[chopper](https://liquipedia.net/counterstrike/Chopper)", difference is he's pro, I'm not :))))
 
 Here's his settings [ProSettings.net](https://prosettings.net/counterstrike/chopper/)

# Info

Note that the binds in this CFG are created around the QWERTY UK keyboard layout

**Last update**: 01/06/23

 **Mouse**: 1khz polling rate, 800dpi and 0.9 in game sens. ([Logitech G305](https://www.amazon.co.uk/Logitech-Wireless-Lightweight-Programmable-compatible/dp/B07CGPZ3ZQ))
 
 **Video**: 
 
 * Resolution: 
    * Windows: 1440x1080
    * Linux: 1440x1080
 * Uber Shaders enabled
 * Shadows: High
 * MSAA and "Texture Filtering Mode" varies between disabled and 2x
 * Everything else lowest.
 
 ([ASUS XG258Q](https://www.amazon.com/Asus-Ecran-PC-Gamer-XG258Q/dp/B075CKS1M4/), RX 6800, R5 5600X)
 
# Features
* Modified rates based on ping
* Jump throw bind
* Togglable scroll B-Hop
* Easy adjustments for game and voice volume
* Various Half Life sounds for switching weapon, pressing the use key etc. (From [FranzJ](https://www.youtube.com/watch?v=KIck3ZEXIfU))
* Radar size adjustment bind
* Clearing of decals
* Lowered GPU usage in menus
* Surf Mode
* CSS viewmodel with minimal weapon movement
* Many other adjustments...

# Installation
[**>>>>Backup your original config!<<<<**](https://youtu.be/tsXrdzcbmbM?t=30)

**1.** Download [autoexec.cfg](https://raw.githubusercontent.com/Chopper1337/CSGO-CFG/master/autoexec.cfg) and open in any text editor. 
(Optional: Download [autowelcome.cfg](https://raw.githubusercontent.com/Chopper1337/CSGO-CFG/master/autowelcome.cfg) and [video.txt](https://raw.githubusercontent.com/Chopper1337/CSGO-CFG/master/video.txt))

**2.** Change `cl_interp` and `cl_interp_ratio` according to your average ping, following this table:

| Ping (ms) | cl_interp | cl_interp_ratio    |
|-----------|-----------|-------------------|
| 1-29      | 0.007813  | 1 |
| 30-59     | 0.015625  | 1 |
| 60-89     | 0.015625  | 2 |
| 90-100    | 0.03125   | 2 |

**Note**: You can find your average ping on Valve servers by going to the "Latency" tab in your "Personal Game Data" for CSGO through the games list on your profile.


**3.** Change `hud_scaling` in the "HUD" section (Line 94) according to your preference.

**4.** Modify or delete the crosshair section (Line 139). [View crosshair](https://github.com/Chopper1337/CSGO-CFG/raw/master/Screenshots/0screenshot.jpg)

**5.** Save and drop the autoexec.cfg (and autowelcome.cfg ) into the following directory
`Counter-Strike Global Offensive/csgo/cfg/`<br>

(Right click CSGO -> Manage -> Browse local files)

If you downloaded [video.txt](https://raw.githubusercontent.com/Chopper1337/CSGO-CFG/master/video.txt), place it in
`Steam/userdata/[YOUR USER ID]/730/local/cfg`

Buy binds can be generated on [CSGOBindsGenerator.com](http://csgobindsgenerator.com/)

Changes should be automatically applied on game launch.

If you change a setting through console while in game, you can press the **Delete** key to re-run the autoexec.cfg (or type "exec autoexec" in console) to revert to the setting specified there.

# Launch Options

## Windows

`-nojoy -novid  -tickrate 128 -console +cl_updaterate 128`

* Disables controller and startup videos.

* Changes default tick rate to 128, this means matches you host (such as 1v1s) will be 128 tick.

## Linux

### Vulkan

`xrandr --output DisplayPort-0 --mode 1920x1080 --set TearFree off --scale-from 1440x1080 --pos 1920x0 --rate 240 --primary --rotate normal --set "scaling mode" None ; vblank_mode=0 gamemoderun DXVK_ASYNC=1  %command% -vulkan -novid -nojoy`

* Sets primary monitor to 1440x1080 and scales it up to 1080p.

* Disabled X server V Sync

* Starts the game with `gamemode`

* **Enables `DXVK_ASYNC` for `-vulkan`**
   * **Note:** this seems to significantly improve the "feel" of the game in terms of frame time consistency compared to ToGL.

* Disables startup movie and controller input

### OpenGL/ToGL

`gamemoderun %command% -novid -nojoy`

or

`gamemoderun mesa_no_error=true %command% -novid -nojoy` ;)


# Binds

**Middle click**: Toggles scroll wheel between B-Hop and weapon switching

**Insert**: Enters bot warmup (Disabled by default)

**Home**: Switch to Spectator

**Delete**: Executes autoexec.cfg

**Mouse 4, Mouse 5**: Equip Smoke or Flash

**Square Brackets**: Adjust radar zoom

**Right Shift**: Surf/KZ mode (300fps limit, mouse4 and mouse5 are mapped to turn left and right)

**Enter**: Global chat

**Period**: Team chat

**F2**: Re-buy last loadout

**E**: Use key

**F**: Inspects weapon

**N**: Jump throw, equip a nade, hold mouse1 and then hold N to jump throw

**T**: Equip Molotov / Show mouse on scoreboard

**L**: Toggles `cl_righthand`

**V**: Voice chat

**Z,X,C**: Radio commands

**7**: Toggles `noclip` and debug mode

**0**: Toggles `voice_enable`

**Negative/Minus**: Toggles voice_scale

<!-- **Equals**: Adjusts game volume between the following values `1 0.7 0.1 0` -->

**Comma**: Ping crosshair location

Probably missed some, read through the config, make your own changes

# Some visible changes 

* HUD takes less space and is on bottom of screen <br>
![](https://github.com/Chopper1337/CSGO-CFG/raw/master/Screenshots/players-alive.jpg)

* Viewing the scoreboard will toggle `cl_showpos` and `net_graph` <br>
![](https://github.com/Chopper1337/CSGO-CFG/raw/master/Screenshots/scoreboard-info.jpg)

* HUD is scaled down to take up less space `hud_scaling "0.65"` and is also green for visibility `cl_hud_color "8"`<br>
![](https://github.com/Chopper1337/CSGO-CFG/raw/master/Screenshots/0screenshot.jpg)

* Optional welcome message <br>
![](https://github.com/Chopper1337/CSGO-CFG/raw/master/Screenshots/welcome%20message.jpg)


# Notes on performance for CSGO

Unless you're running a GT710, **the main thing to consider for CSGO is CPU performance**. The more utilisation the game gets of your CPU, the better your framerate will be. GPU isn't as important as all settings will be on lowest and most players are playing in a lower resolution such as 1280x960.

**CSGO doesn't seem to utilise many cores**, so 4 (ideally 6) very fast (Clock and IPC) cores will give a good FPS.

**CPU clock speed boosting technologies** such as AMD's Precision Boost Overdrive **should be preferred over an all core overclock for CSGO**, unless you can get an all core OC higher than what PBO (or any equivalent) can provide.

Adjust **Texture Filtering Mode** and **MSAA** as these settings will impact performance significantly.

**Removing bloat from your OS will help**.

**Reduce your CPU usage** as much as possible when playing CSGO. Programs such as **web browsers will use enough CPU cycles to affect your FPS** even if they're idle while you play. 

## Windows

On Windows, you'll likely have many processes running in the background which you never use. There are multiple ways to deal with this (in order of least to most effort) :

### WinUtil

First would be to use [`winutil`](https://github.com/ChrisTitusTech/winutil) on your current Windows installation to debloat it. **Make a backup before using this tool!**.

*I personally haven't ran into issues after using it but I rarely use Windows and therefore don't rely on it to do much more than play FACEIT or other things I can't run on Linux.*

### Windows LTSC

Another solution would be to use **Windows 10 LTSC/Enterprise** as it comes with less bloat out of the box by default. You could even run `winutil` on Windows LTSC if you really want to minimise your install.

### Custom ISO

Finally, if you are very serious about getting the most out of Windows, research creating your own custom Windows ISO using a tool such as NTLite or MSMG Toolkit.

Refer to [ChrisTitusTech](https://christitus.com/) guides such as [this one](https://christitus.com/setting-up-the-ultimate-windows-11/)


Also, be sure that your Windows power profile is set to **High Performance** or a similar equivalent while playing to prevent CPU throttling.

## Linux

Try using a kernel optimised for gaming such as `linux-zen` or [`linux-tkg`](https://github.com/Frogging-Family/linux-tkg "TKG"). For `linux-tkg`, compile it with the best options for your CPU.

You can also use [Gamemode](https://github.com/FeralInteractive/gamemode "Gamemode") with the launch parameters `gamemoderun %command%`. 

Gamemode *should* kill your compositor while you play but if it doesn't, you can add custom commands to the `[custom]` section at the end of `~/.config/gamemode.ini`

Reducing background load also applies to Linux but less so as most distros are lighter than an average Windows install.

# Sources

[Rates (Net code)](https://steamcommunity.com/sharedfiles/filedetails/?id=795437982)

[Sound settings](https://steamcommunity.com/sharedfiles/filedetails/?id=703059693)

[FranzJ Half Life Sounds](https://www.youtube.com/watch?v=KIck3ZEXIfU)

[Budi's CFG](https://gist.github.com/nickbudi/3916475)

[Launch options (Valve)](https://developer.valvesoftware.com/wiki/Command_Line_Options)

[Launch options (Third Party)](https://totalcsgo.com/launch-options)
