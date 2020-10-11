; -------------------------------------------------------
; This script remaps your left click to left, then right click.
; You can toggle this script on and off by pressing the insert key.
; -------------------------------------------------------



; -------------------------------------------------------
SetTitleMatchMode, 2 ; This activates the script in any window that partially matches

;	Replace Notepad with your program, or else place a semicolon character
;		at the start of the following line to use it across all programs.
#IfWinActive, Notepad ; This makes the script to only run on Notepad's window 

; -------------------------------------------------------
#NoEnv 
setworkingdir %a_scriptdir%



; -------------------------------------------------------
; Pressing Insert toggles the functionality of the script. On by default.
Insert::

  Hotkey, LButton, Toggle
  Hotkey, RButton, Toggle

return

; -------------------------------------------------------
; This is where the magic happens.
LButton::
Click, Right
Click, Left
return

RButton::
Click, Right
Click, Left
return



; -------------------------------------------------------
; Shift + Escape to terminate the script
+esc::ExitApp

; -------------------------------------------------------
;	You only need one instance of this program running, two could be problematic
#singleinstance force
