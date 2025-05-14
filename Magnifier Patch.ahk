#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance, Force

<^>!=::
IfWinNotExist, ahk_class MagUIClass ahk_exe Magnify.exe
{
 ; Magnifier.exe
}
Send, #=
Return

<^>!-::
Send, #-
Return

<^>!bs::
IfWinExist, ahk_class MagUIClass ahk_exe Magnify.exe
{
WinClose, ahk_class MagUIClass ahk_exe Magnify.exe
}
Send, #{escape}
Return