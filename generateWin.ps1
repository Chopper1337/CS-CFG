# Settings
$sensitivity = "0.9"
$sensitivity_opt = "1.8"
$maxfps = "999"
$menufps = "144"
$gamma = "2.3"
$volume = "1"
$maxping = "30"
$crosshaircode = "CSGO-Mhef3-Un2pm-V2irv-mBNa8-US88F"
$resolution = "1280x960"

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
(Get-Content template.cfg)`
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
    -replace '{{date}}', $date`
| Out-File -encoding ASCII autoexec.cfg

# Read the template_laptop.cfg file and substitute variable values
(Get-Content template_laptop.cfg)`
    -replace '{{sensitivity_laptop}}', $sensitivity_laptop `
    -replace '{{sensitivity_laptop_opt}}', $sensitivity_laptop_opt `
| Out-File -encoding ASCII laptop.cfg

# Read the template_hvh.cfg file and substitute variable values
(Get-Content template_hvh.cfg)`
    -replace '{{sensitivity_hvh}}', $sensitivity_hvh `
| Out-File -encoding ASCII hvh.cfg

(Get-Content template.md)`
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
| Out-File -encoding ASCII README.md

Write-Host "Config generated successfully: autoexec.cfg"