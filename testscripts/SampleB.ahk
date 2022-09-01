#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

class testChat {
    __Call(title, pid) {
        ; Check window title
        if WinExist(title) {
            ; Pressing 2 key in window
            ControlSend,, 2, ahk_pid %pid%
        }
    }
}