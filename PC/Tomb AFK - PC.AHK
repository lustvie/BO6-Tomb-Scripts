#Persistent
#MaxThreadsPerHotkey 3

; GLOBAL FLAGS 
ActionActive := false
KeeploopRunning := false
HoldF_Duration := 4000
Spam3_Interval := 100

; PIXEL CHECK TIMER 
SetTimer, CheckPixelColor, 100  ; Check every 100ms

CheckPixelColor:
    if (ActionActive)
        return

    PixelGetColor, color, 969, 783, RGB
    color := SubStr(color, 3)
    StringLower, color, color

if (color = "eb4442")  ; match target
{
    ActionActive := true
    KeeploopRunning := false
    SetTimer, CheckPixelColor, Off

    ; Stop all movement and inputs 
    Send, {W up}{A up}{S up}{D up}{LButton up}{f up}

    ; Start save & quit  
    Send, {f down}
    SetTimer, Spam3, % -Spam3_Interval
    SetTimer, StopHoldAndSpam, -%HoldF_Duration%
}

return

;  COMBAT + MOVEMENT LOOP 
8::
#MaxThreadsPerHotkey 1
if KeeploopRunning
{
    KeeploopRunning := false
    Send, {W up}{A up}{D up}{LButton up}
    return
}
KeeploopRunning := true

; Hold W+D constantly
Send, {W down}
Send, {D down}

Loop
{
    if ActionActive or !KeeploopRunning
        break

    ; FIRE + MOVE RIGHT
    Send, {D up}
    Send, {A down}
    Send, {LButton down}
    Sleep, 500
    Send, {A up}
    Send, {D down}

    ; ARMOR 
    Send, G
    Sleep, 2000

    ; STOP SHOOTING 
    Send, {LButton up}
    Sleep, 1000

    ; RELOAD 
    Send, {R}
    Sleep, 2500

    ; FIELD UPGRADE 
    Send, {X}
    Sleep, 300
}
KeeploopRunning := false
return


; Spam '3' Flag (Use Mutant Injection)
Spam3:
    if (ActionActive)
        Send, 3
return

; Save & Quit 
StopHoldAndSpam:
    SetTimer, Spam3, Off
    ActionActive := false
    Send, {f up}
    Sleep, 800

    ; Pause Menu
    Send, {Esc}
    Sleep, 500
    Send, {Esc}
    Sleep, 500
    Send, {Esc}
    Sleep, 700

    ; Navigate Save & Quit
    Loop, 6
    {
        Send, {Down}
        Sleep, 200
    }
    
    ; Confirm Save & Quit
    Sleep, 500
    Send, {Space}
    Sleep, 500
    Send, {Down}
    Sleep, 500
    Send, {Space}
    Sleep, 500

    ExitApp
return
*::ExitApp
