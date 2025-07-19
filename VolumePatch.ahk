#NoEnv                      ; Recommended for performance and compatibility with future AHK versions
#Warn                       ; Enable warnings for common errors
SendMode Input              ; Faster and more reliable input method
SetWorkingDir %A_ScriptDir% ; Start in script's own directory
#SingleInstance Force       ; Prevent multiple script instances

; ---------------------------------------------------------------------
; Right Ctrl + Arrow Keys
; Use these to control volume without Fn key
; ---------------------------------------------------------------------

^Right::                    ; Right Ctrl + Right Arrow → Volume Up
Send, {vkAFsc130}
return

^Left::                     ; Right Ctrl + Left Arrow → Volume Down
Send, {vkAEsc12E}
return

; ---------------------------------------------------------------------
; F11 / F12 as Direct Volume Keys
; Ideally used only on systems without Fn lock (e.g. some Asus laptops)
; ---------------------------------------------------------------------

F11::                       ; F11 → Volume Down
Send, {vkAEsc12E}
return

F12::                       ; F12 → Volume Up
Send, {vkAFsc130}
return