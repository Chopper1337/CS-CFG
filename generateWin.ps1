# Settings
$sensitivity = "0.9"
$sensitivity_opt = "1.8"
$maxfps = "999"
$menufps = "144"
$gamma = "2.764991"
$volume = "1"
$maxping = "30"
$crosshaircode = "CSGO-QwBne-zCdHX-eCHSD-uVcNU-cmtOH"
$resolution = "1440x1080"

# Crosshair
$crosshair="true"
$crosshair_drawoutline="true"
$crosshair_friendly_warning="0"
$crosshair_outlinethickness="0.5"
$crosshair_recoil="false"
$crosshair_sniper_width="1"
$crosshair_t="false"
$crosshairalpha="255"
$crosshaircolor="5"
$crosshaircolor_b="0"
$crosshaircolor_g="255"
$crosshaircolor_r="0"
$crosshairdot="false"
$crosshairgap="-0.6"
$crosshairgap_useweaponvalue="false"
$crosshairsize="3.6"
$crosshairstyle="4"
$crosshairthickness="0.6"
$crosshairusealpha="true"
$fixedcrosshairgap="3"
$show_observer_crosshair="1"
$left_handed="1"

# Keyboard - movement
$forward = "w"
$back = "s"
$left = "a"
$right = "d"
$walk = "shift"
$jump = "backspace"
$crouch = "ctrl"
$crouch_opt = "space"

# Keyboard - communication
$globalchat = "enter"
$teamchat = "."
$voicechat = "v"
$commsping = "mouse3"

# Personalisation
$yourname = "Chopper"
$yourrepo = "https://github.com/Chopper1337/CS-CFG/" # If you created your own fork, link it here
$monitor = "ASUS XG258Q"
$gpu = "RX 6800"
$cpu = "R5 5600X"
$mouse="Logitech G305"
$mouse_link="https://www.amazon.co.uk/Logitech-Wireless-Lightweight-Programmable-compatible/dp/B07CGPZ3ZQ"
$mouse_polling_rate="1KHz"
$mouse_dpi="800"
$keyboard="ZSA Moonlander"
$keyboard_link="https://www.zsa.io/moonlander/"
$keyboard_switches="Gateron G Pro 2.0 Speed Silver"
$keyboard_opt_1="(custom layout)"
$keyboard_opt_2="https://configure.zsa.io/moonlander/layouts/vrKMn/latest/0"

# Laptop (Optional)
$sensitivity_laptop = "1.8"
$sensitivity_laptop_opt = "3.6"

# HVH (Optional)
$sensitivity_hvh = "5"

# Timestamps (Do not modify)
$month = $(Get-Date -Format "MMMM")
$year = $(Get-Date -Format "yyyy")
$date = $(Get-Date -Format "dd/MM/yy")


# Read the template.cfg file and substitute variable values
(Get-Content ./templates/template.cfg)`
    -replace '{{sensitivity}}', $sensitivity `
    -replace '{{sensitivity_opt}}', $sensitivity_opt `
    -replace '{{maxfps}}', $maxfps `
    -replace '{{menufps}}', $menufps `
    -replace '{{gamma}}', $gamma `
    -replace '{{volume}}', $volume `
    -replace '{{forward}}', $forward `
    -replace '{{back}}', $back `
    -replace '{{left}}', $left `
    -replace '{{right}}', $right `
    -replace '{{walk}}', $walk `
    -replace '{{jump}}', $jump `
    -replace '{{crouch}}', $crouch `
    -replace '{{crouch_opt}}', $crouch_opt `
    -replace '{{globalchat}}', $globalchat `
    -replace '{{teamchat}}', $teamchat `
    -replace '{{voicechat}}', $voicechat `
    -replace '{{commsping}}', $commsping `
    -replace '{{maxping}}', $maxping `
    -replace '{{yourname}}', $yourname `
    -replace '{{yourrepo}}', $yourrepo `
    -replace '{{resolution}}', $resolution `
    -replace '{{crosshaircode}}', $crosshaircode `
    -replace '{{month}}', $month `
    -replace '{{year}}' , $year `
    -replace '{{date}}', $date  `
    -replace '{{crosshair}}', $crosshair  `
    -replace '{{crosshair_drawoutline}}', $crosshair_drawoutline `
    -replace '{{crosshair_friendly_warning}}', $crosshair_friendly_warning `
    -replace '{{crosshair_outlinethickness}}', $crosshair_outlinethickness `
    -replace '{{crosshair_recoil}}', $crosshair_recoil `
    -replace '{{crosshair_sniper_width}}', $crosshair_sniper_width `
    -replace '{{crosshair_t}}', $crosshair_t `
    -replace '{{crosshairalpha}}', $crosshairalpha `
    -replace '{{crosshaircolor}}', $crosshaircolor `
    -replace '{{crosshaircolor_b}}', $crosshaircolor_b `
    -replace '{{crosshaircolor_g}}', $crosshaircolor_g `
    -replace '{{crosshaircolor_r}}', $crosshaircolor_r `
    -replace '{{crosshairdot}}', $crosshairdot `
    -replace '{{crosshairgap}}', $crosshairgap `
    -replace '{{crosshairgap_useweaponvalue}}', $crosshairgap_useweaponvalue `
    -replace '{{crosshairsize}}', $crosshairsize `
    -replace '{{crosshairstyle}}', $crosshairstyle `
    -replace '{{crosshairthickness}}', $crosshairthickness `
    -replace '{{crosshairusealpha}}', $crosshairusealpha `
    -replace '{{fixedcrosshairgap}}', $fixedcrosshairgap `
    -replace '{{show_observer_crosshair}}', $show_observer_crosshair `
    -replace '{{left_handed}}', $left_handed `
| Out-File -encoding ASCII autoexec.cfg

# Read the template_laptop.cfg file and substitute variable values
(Get-Content ./templates/template_laptop.cfg)`
    -replace '{{sensitivity_laptop}}', $sensitivity_laptop `
    -replace '{{sensitivity_laptop_opt}}', $sensitivity_laptop_opt `
| Out-File -encoding ASCII laptop.cfg

# Read the template_hvh.cfg file and substitute variable values
(Get-Content ./templates/template_hvh.cfg)`
    -replace '{{sensitivity_hvh}}', $sensitivity_hvh `
| Out-File -encoding ASCII hvh.cfg

(Get-Content ./templates/template.md)`
    -replace '{{yourname}}' , $yourname `
    -replace '{{date}}', $date`
    -replace '{{globalchat}}', $globalchat `
    -replace '{{teamchat}}', $teamchat `
    -replace '{{voicechat}}', $voicechat `
    -replace '{{crosshaircode}}', $crosshaircode `
    -replace '{{sensitivity}}', $sensitivity `
    -replace '{{sensitivity_opt}}', $sensitivity_opt `
    -replace '{{resolution}}', $resolution `
    -replace '{{monitor}}', $monitor `
    -replace '{{gpu}}', $gpu `
    -replace '{{cpu}}', $cpu `
    -replace '{{mouse}}', $mouse `
    -replace '{{mouse_link}}', $mouse_link `
    -replace '{{mouse_polling_rate}}', $mouse_polling_rate `
    -replace '{{mouse_dpi}}', $mouse_dpi `
    -replace '{{keyboard}}', $keyboard `
    -replace '{{keyboard_link}}', $keyboard_link `
    -replace '{{keyboard_switches}}', $keyboard_switches `
    -replace '{{keyboard_opt_1}}', $keyboard_opt_1 `
    -replace '{{keyboard_opt_2}}', $keyboard_opt_2 `
| Out-File -encoding ASCII README.md

Write-Host "Config generated successfully: autoexec.cfg"
