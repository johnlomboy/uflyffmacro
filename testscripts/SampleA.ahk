#SingleInstance, Force
#Include, SampleB.ahk
SendMode Input
SetWorkingDir, %A_ScriptDir%


; Global Variables
browserTitle := "Flyff Universe - Google Chrome"
pidtest := "34396"

/*
    Pressing 3 key to execute shoutBuy function object
*/
3::
{
    /*
        Function Object does not detect global variables.
        Passing them as parameters
    */
    shoutBuy.__Call(browserTitle, pidtest)
    Return
}

class shoutBuy {
    ; Main function
    __Call(title, pid) {
        ; Check window title
        if WinExist(title) {
            ControlSend,, 1, ahk_pid %pid%
        }
    }
}

/*
    Pressing 3 key to execute shoutBuy function object
*/
4::
{
    testChat.__Call(browserTitle, pidTest)
}

