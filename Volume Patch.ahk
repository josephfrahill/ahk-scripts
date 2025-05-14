#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance, Force

^left::
Send, {vkAEsc12E}
Return

^right::
Send, {vkAFsc130}
Return

f11::
Send, {vkAEsc12E}
Return

f12::
Send, {vkAFsc130}
Return

