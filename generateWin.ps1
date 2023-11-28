#

# Settings
$sensitivity="0.9"
$sensitivity_opt="1.8"
$maxfps="999"
$menufps="144"
$gamma="2.3"
$volume="1"
$maxping="30"
$crosshaircode="CSGO-Mhef3-Un2pm-V2irv-mBNa8-US88F"

# Keyboard - movement
$forward="w"
$back="s"
$left="a"
$right="d"
$walk="shift"
$jump="backspace"
$crouch="ctrl"
$crouch_opt="space"

# Keyboard - communication
$globalchat="enter"
$teamchat="."
$voicechat="v"
$commsping="mouse3"

# Personalisation
$yourname="Chopper"
$yourrepo="https://github.com/Chopper1337/CS-CFG/" # If you created your own fork, link it here

# Timestamps
$month=$(Get-Date -Format "MMMM")
$year=$(Get-Date -Format "yyyy")
$date=$(Get-Date -Format "dd/MM/yy")


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
   -replace '{{month}}', $month `
   -replace '{{year}}' , $year `
    | Out-File -encoding ASCII autoexec.cfg


(Get-Content template.md)`
    -replace '{{yourname}}' , $yourname `
    -replace '{{date}}', $date`
    -replace '{{globalchat}}', $globalchat `
    -replace '{{teamchat}}', $teamchat `
    -replace '{{voicechat}}', $voicechat `
    -replace '{{crosshaircode}}', $crosshaircode `
    -replace '{{sensitivity}}', $sensitivity `
    -replace '{{sensitivity_opt}}', $sensitivity_opt `
    | Out-File -encoding ASCII README.md

Write-Host "Config generated successfully: autoexec.cfg"