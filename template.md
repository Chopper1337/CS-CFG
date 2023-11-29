# {{yourname}}'s Counter-Strike: 2 Configuration

 Generated with https://github.com/Chopper1337/CS-CFG/

# Info

 Note that the binds in this CFG are created around the QWERTY UK keyboard layout.

 You may need to add `+exec autoexec.cfg` to your game launch options.

 **Last update**: {{date}}

 Crosshair code: `{{crosshaircode}}`

 **Mouse**: 1khz polling rate, 800dpi and 0.9 in game sens. ([Logitech G305](https://www.amazon.co.uk/Logitech-Wireless-Lightweight-Programmable-compatible/dp/B07CGPZ3ZQ))

 **Keyboard**: ZSA Moonlander - Gateron G Pro 2.0 Speed Silverswitches - [Layout](https://configure.zsa.io/moonlander/layouts/vrKMn/latest/0)
 
 **Video**: 
 
 * Resolution: {{resolution}}
 * Shadows: High
 * FSR: OFF
 * Everything else at lowest.

**Hardware**

* Monitor: {{monitor}}
* GPU: {{GPU}}
* CPU: {{CPU}}

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

 * **{{globalchat}}** - Global chat
 * **{{teamchat}}** - Team chat
 * **{{voicechat}}** - Voice chat

# Util Bindings

 * **T** - Molotov
 * **4** - HE Grenade
 * **Mouse 4** - Smoke
 * **Mouse 5** - Flash

 # While holding TAB
 * **1** and **2** - Set mouse sensitivity to {{sensitivity}} or {{sensitivity_opt}}
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
