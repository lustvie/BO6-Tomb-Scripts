#Persistent
#MaxThreadsPerHotkey 3
8::  
#MaxThreadsPerHotkey 1
if KeeploopRunning  
{
    KeeploopRunning := false  
    return  
}
KeeploopRunning := true
Loop
{
;   Movement    
    Send, {D down}
    Send, {W down}
    Sleep, 1800

;   Apply Armor
    Send, {g down}
    Sleep, 50
    Send, {g up}
    Sleep, 700

;   Shoot
    Send, {LButton down}
    Sleep, 2500
    Send, {LButton up}
    Sleep, 1000

;   Reload
    Send, {r down}
    Sleep, 50
    Send, {r up}
    Sleep, 2000

;   Field Upgrade
    Send, {X}               
    Sleep, 100

;   Movement 
    Send, {D up}            
    Send, {W up}
    Sleep, 100
    Send, {A down}
    Sleep, 350
    Send, {A up}
    Sleep, 100

    if not KeeploopRunning  
        break  
}
KeeploopRunning := false  
return
9::ExitApp