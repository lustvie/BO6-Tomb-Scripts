# Tomb AFK PC Script Setup

An AutoHotkey v1 script that automates combat, movement, and pixel detection for AFK farming in *Black Ops 6 – Zombies (Tomb map)*.  
It handles movement, shooting, armor, and self-revive triggers automatically based on pixel color detection.

![AutoHotkey](https://img.shields.io/badge/AutoHotkey-v1.1-green)
![Platform](https://img.shields.io/badge/Platform-Windows-blue)

---

## 💻 Requirements
- Windows 10 or 11  
- [AutoHotkey v1.1](https://www.autohotkey.com/)
  
Before running, make sure your Augments and Settings are correct:

- 🧠 **Vulture’s Aid Augment:** Parting Gift, Condor’s Reach  
- ⚡ **Speed Cola:** Supercharged  
- 🛡️ **Juggernog:** Turtle Shell, Durable Plates  
- 💉 **Quick Revive:** Dying Wish  
- 🔌 **Elemental Pop:** Electric Cherry  
- 🐒 **Mister Peaks:** Apex Predator, Party Animal  
- 🪖 **Golden Armor**  
- ❄️ **Upgraded Ice Staff**  
- ⚙️ **Apply Armor** → Set to *Apply One* in settings  
- All binds are **default** (can be customized inside the script)

---

## 📦 Installation
1. Download the file **`Tomb AFK - PC.ahk`**
2. Install AutoHotkey v1 from the official website  
3. Double-click the script to run  

---

## 🎮 Usage

**AFK SPOT**
[![Play video](https://raw.githubusercontent.com/lustvie/Video-Host/main/thumbnail.png)](https://raw.githubusercontent.com/lustvie/Video-Host/main/20251015_CrowdedRoundWolverinePMSTwin-DiLTSg2yhlw08npO_source.mp4)


| Key | Action |
|-----|--------|
| `8` | Toggle combat/movement automation |
| `*` | Exit the script immediately |

### KeyBinds
| Key | Action |
|-----|--------|
| `LMB` | Shoot/Fire |
| `G` | Apply Armor |
| `R` | Reload |
| `X` | Field Upgrade |

- The script holds **W+D** for movement.  
- During shooting, it briefly switches to **W+A** to strafe.  
- When pixel color `#EB4442` is detected at `(969, 783)`, all inputs stop and the revive/save-quit sequence runs.

---

--- DOES NOT WORK ---
WORK IN PROGGRESS - 
## 🧠 Save & Quit Feature
- Works at **1920×1080** resolution in **Borderless Fullscreen**.  
- If your monitor can’t use 1080p, use **Fullscreen Exclusive**.  
- Requires:  
  - 1× Self-Revive  
  - 1× Mutant Injection  

---

## ⚙️ Configuration
```ahk
PixelGetColor, color, 969, 783, RGB
HoldF_Duration := 4000
Spam3_Interval := 100





