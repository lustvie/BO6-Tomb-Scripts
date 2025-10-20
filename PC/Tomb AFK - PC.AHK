8::
#MaxThreadsPerHotkey 1
if KeeploopRunning {
    KeeploopRunning := false
    Send, {W up}{A up}{D up}{LButton up}
    return
}
KeeploopRunning := true

; ONLY NOW start initial movement
Send, {W down}{D down}

Loop {
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
