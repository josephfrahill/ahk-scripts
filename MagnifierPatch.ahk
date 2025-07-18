#NoEnv                      ; Recommended for performance and compatibility with future AHK versions
#Warn                       ; Enable warnings for common errors
SendMode Input              ; Faster and more reliable sending method
SetWorkingDir %A_ScriptDir% ; Start in script's own directory
#SingleInstance Force       ; Prevent multiple script instances

; ---------------------------------------------------------------------

; Hotkey: AltGr + =
; Action: Launch Magnifier if not running, then zoom in when retriggered
<^>!=::
{
    if !WinExist("ahk_class MagUIClass ahk_exe Magnify.exe") {
        Run, magnify.exe
        return
    }
    Send, #=  ; Simulate Win + = (Zoom In)
}
return

; ---------------------------------------------------------------------
; Hotkey: AltGr + -
; Action: Zoom out
<^>!-::
{
    Send, #-  ; Simulate Win + - (Zoom Out)
}
return

; ---------------------------------------------------------------------
; Hotkey: AltGr + Backspace
; Action: Close Magnifier and exit fullscreen if active
<^>!Backspace::
{
    if WinExist("ahk_class MagUIClass ahk_exe Magnify.exe") {
        WinClose  ; Close the Magnifier window
    }
    Send, #{Escape}  ; Win + Esc (Exit fullscreen mode)
}
return