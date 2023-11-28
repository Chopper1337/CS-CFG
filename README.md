# Chopper's Counter-Strike: 2 Configuration

 Generated with https://github.com/Chopper1337/CS-CFG/

# Info

 Note that the binds in this CFG are created around the QWERTY UK keyboard layout.

 You may need to add `+exec autoexec.cfg` to your game launch options.

 **Last update**: 28/11/23

 Crosshair code: `CSGO-Mhef3-Un2pm-V2irv-mBNa8-US88F`

 **Mouse**: 1khz polling rate, 800dpi and 0.9 in game sens. ([Logitech G305](https://www.amazon.co.uk/Logitech-Wireless-Lightweight-Programmable-compatible/dp/B07CGPZ3ZQ))

 **Keyboard**: ZSA Moonlander - Gateron G Pro 2.0 Speed Silverswitches - [Layout](https://configure.zsa.io/moonlander/layouts/vrKMn/latest/0)
 
 **Video**: 
 
 * Resolution: 
    * Windows: 1440x1080
    * Linux: 1280x960
 * Shadows High
 * FSR OFF
 * 2xMSAA
 * 4xAF
 * Everything else at lowest.
 
 (ASUS XG258Q, RX 6800, R5 5600X)

# Generation

 The main `autoexec.cfg` file is generated via the `generate.sh` script, using the `template.cfg` as a base.

 To make changes to the config, we edit the script's variables.

 Currently there are only a few variables but adding more is simple.
 
# Features
 
 * Scroll bhop
 * Easily switch between sensitivities
 * Improved viewmodel
 * Toggle crosshair recoil
 * Targets acquired

# Communication Bindings

 * **enter** - Global chat
 * **.** - Team chat
 * **v** - Voice chat

# Util Bindings

 * **T** - Molotov
 * **4** - HE Grenade
 * **Mouse 4** - Smoke
 * **Mouse 5** - Flash

 # While holding TAB
 * **1** and **2** - Set mouse sensitivity to 0.9 or 1.8
 * **Mouse 3** - Spray graffiti

# Other Bindings

 * **I** - Fix audio delay*
 * **O** - Toggle crosshair recoil
 * **DELETE** - Executes `autoexec.cfg`

*In some cases, audio can become delayed (desynced from video) over time. The longer the game runs, the worse the delay gets.
This switches the default audio device which resets the delay. Press this key whenever your audio seems delayed.

# TODO

 * Interaction sounds* (switching weapon, interacting with doors, vents etc.)

*if possible
