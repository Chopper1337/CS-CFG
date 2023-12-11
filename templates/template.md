# {{yourname}}'s Counter-Strike: 2 Configuration

 Generated with https://github.com/Chopper1337/CS-CFG/

# Info

 Note that the binds in this CFG are created around the QWERTY UK keyboard layout.

 You may need to add `+exec autoexec.cfg` to your game launch options.

 **Last update**: {{date}}

 Crosshair code: `{{crosshaircode}}`

 **Mouse**: {{mouse_polling_rate}} polling rate, {{mouse_dpi}} DPI and {{sensitivity}} in game sens. ([{{mouse}}]({{mouse_link}}))

 **Keyboard**: [{{keyboard}}]({{keyboard_link}}) - {{keyboard_switches}} switches [{{keyboard_opt_1}}]({{keyboard_opt_2}})
 
 **Video**: 
 
 Resolution: {{resolution}}

 ![Video](images/video.png)

 **Audio**: 

 ![Audio](images/audio.png)

**Hardware**:

 * Monitor: {{monitor}}
 * GPU: {{gpu}}
 * CPU: {{cpu}}

# Features
 
 * Scroll bhop
 * Easily switch between two different mouse sensitivities
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

# Screenshots

 Upon executing autoexec.cfg:

 ![autoexec.cfg](./images/autoexec.cfg.png)

 The 'config' command:

 ![config command](./images/config.png)

# Generation

 1. Open the generation script you will be using.
 
    If you are on **Linux**, use `generate.sh`.
    
    On **Windows**, use `generateWin.ps1`.

 2. Replace the values for the variables per your preference.

 3. Replace the `video.png` and `audio.png` screenshots in the images folder.

 4. Run the generation script.
