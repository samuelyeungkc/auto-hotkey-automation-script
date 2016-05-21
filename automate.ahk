#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

#SingleInstance force ;a flag to specify only a single instance of the script can be executed at a time

^j:: ; ctrl + j to activate the script
Loop, 900 ; loop 900 times
{
	Send {Control down}{f}{Control Up} ; simulate ctrl + f press
	Sleep, 50 ; wait for 50 ms
	Send history={enter}{Esc} ; input history then press enter and esc
	Sleep, 50
	Send {Right 5}
	Sleep, 50
	Send {Control down}{Shift down}{b}{Control Up}{Shift Up}
	Sleep, 50	
	Send {Control down}{b}{Control Up}
	Sleep, 50	
	Send {Control down}{Shift down}{b}{Control Up}{Shift Up}
	Sleep, 50	
	Send {enter}
}
Return
