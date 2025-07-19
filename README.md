# 🔧 AutoHotkey Utility Scripts

This collection of small, focused AutoHotkey scripts is designed to make common Windows actions faster and more convenient — especially on laptops where certain hardware keys are hard to reach or unreliable.

## 📄 Jump to Section

- [🔊 Volume Control Hotkey Script](#-volume-control-hotkey-script)
- [🔍 Windows Magnifier Hotkey Script](#-windows-magnifier-hotkey-script)
- [🧩 Tip: Start on Boot](#-tip-start-on-boot)
- [📜 License](#-license)

---

## 🔊 Volume Control Hotkey Script

This script provides a smooth and reliable way to control system volume using more ergonomic shortcuts — perfect for laptops where volume keys are awkward or hidden behind an Fn key combo.

### ✅ Primary Functionality: Right Ctrl + Arrow Keys

| Hotkey                 | Action        |
|------------------------|---------------|
| Right Ctrl + → (Right Arrow) | Volume Up     |
| Right Ctrl + ← (Left Arrow)  | Volume Down   |

This combination feels natural and intuitive, and works very consistently across Windows systems. It eliminates the need to stretch for media keys or hold the Fn key — just tap or hold Right Ctrl and use the arrow keys to adjust volume quickly and easily.

> 🔁 **Tip:** You can hold the hotkeys to adjust the volume continuously — just like holding down a physical volume button.

---

### 🖥 Optional Functionality: F11 / F12 Remaps (Asus-Friendly)

Some laptops — especially older Asus models — don’t allow enabling the Fn lock, making volume adjustment tedious (e.g., having to press Fn + F11/F12 every time).

This script also remaps:

| Key  | Action        |
|------|---------------|
| F11  | Volume Down   |
| F12  | Volume Up     |

This makes volume control easier on devices that lack a dedicated Fn lock, letting you use F11 and F12 directly.

> ⚙️ **Not on an Asus?**  
> Feel free to remove or comment out the F11 and F12 sections if your keyboard already supports dedicated media keys or if you prefer not to override those keys.

---

### 🧠 How It Works

- Uses virtual key codes and scan codes (`{vkAEsc12E}`, `{vkAFsc130}`) to simulate volume up/down
- Binds Right Ctrl + Arrow Keys as ergonomic hotkeys
- Optionally overrides F11 and F12 for use without Fn key
- Hotkeys are repeatable when held — great for fast volume changes

---

### 🛠 Requirements

- AutoHotkey installed on your system
- Windows with standard media key support (built-in on most machines)

---

## 🔍 Windows Magnifier Hotkey Script

This AutoHotkey script provides convenient keyboard shortcuts using **AltGr** to control the Windows Magnifier. It allows you to quickly zoom in, zoom out, and close the Magnifier using consistent, ergonomic hotkeys.

### 💡 Features

| Hotkey       | Action                                                                 |
|--------------|------------------------------------------------------------------------|
| AltGr + =    | Launch Magnifier (if not already running), then Zoom In when re-triggered |
| AltGr + -    | Zoom Out                                                               |
| AltGr + ⌫    | Close Magnifier and exit fullscreen                                    |

This avoids the need to stretch for awkward `Win`+key combos or manually open Magnifier via the Start menu.

> ⚠️ **Note:**  
> Windows remembers the last zoom level used.  
> For example, if you exit the Magnifier at 200%, it will reopen at 200% the next time you launch it.

---

### 🧠 How It Works

- Uses `Send, #=`, `#-`, and `#{Escape}` to simulate native Windows Magnifier shortcuts
- Checks if Magnifier is already running before launching it
- Cleanly closes Magnifier if active and exits fullscreen
- Holding hotkeys allows for faster zoom adjustment

---

### 🛠 Requirements

- AutoHotkey installed
- Windows built-in Magnifier (`magnify.exe`)

---

## 🧩 Tip: Start on Boot

To have these scripts run automatically when you log in, place a shortcut to the `.ahk` file (or a compiled `.exe` version) in your Startup folder. Just palcing the `.ahk` file may also work.

🗂 **All Users Startup Folder:**

`C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Startup`


👤 **Or, for your personal user account:**

C`:\Users<YourUsername>\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup`


> 💡 Right-click your script → **Create Shortcut**, then move that shortcut into the Startup folder.

---

## 📜 License

These scripts are provided under the MIT License.  
Feel free to use, modify, and redistribute them — attribution appreciated but not required.

---
