//Ash Autopilot V1 menu.
//╔  ═  ╗
//║  ╠  ╣
//╚  ═  ╝
//╔═══════════════════╗
//╠═══════════════════╣
//║     Execute ?     ║
//║       Y   N       ║
//║                   ║
//╚═══════════════════╝
//╔═══════════════════╗
//║       (0,1)       ║
//╠═══════════════════╣
//║       (0,3)       ║
//║       (0,4)       ║
//║       (0,5)       ║
//║       (0,6)       ║
//║       (0,7)       ║
//║       (0,8)       ║
//║       (0,9)       ║
//║       (0,10)      ║
//║       (0,11)      ║
//║       (0,12)      ║
//║       (0,13)      ║
//║       (0,14)      ║
//║       (0,15)      ║
//║       (0,16)      ║
//║       (0,17)      ║
//║       (0,18)      ║
//║       (0,19)      ║
//║       (0,20)      ║
//║       (0,21)      ║
//╠═══════════════════╣
//║       (0,23)      ║
//╠═══════════════════╣
//║      Ash  AP      ║
//║   VERSION 1.A.1   ║
//╚═══════════════════╝

function ProgramMenu 
{
    clearscreen.
    BlankUI().
    print "║  PROGRAM  SELECT  ║" at (0,1).
    print "║ 0: Assent         ║" at (0,3).
    print "║ 1: Circularize    ║" at (0,4).
    print "║ 2: Execute node   ║" at (0,5).
    print "║ 3: Transfer: moon ║" at (0,6).
    print "║ 4: Return         ║" at (0,7).
    print "║ 5: Information    ║" at (0,8).
    InputNeeded().

    set ch to terminal:input:getchar().
    
    if ch = 0
    {
        BlankUI().
        print "║     Selected:     ║" at (0,3).
        print "║      Ascent       ║" at (0,4).
        print "║   Confirm: Y  N   ║" at (0,6).
        InputNeeded().

        set ch to terminal:input:getchar().
        if ch = "y"
        {
            runPath("0:/AshAP/Assent").
        }
        else if ch = "n" 
        {
            ProgramMenu().
        }
        else ProgramMenu().
    }
    else if ch = 1
    {
        BlankUI().
        print "║     Selected:     ║" at (0,3).
        print "║    Circularize    ║" at (0,4).
        print "║   Confirm: Y  N   ║" at (0,6).
        InputNeeded().

        set ch to terminal:input:getchar().
        if ch = "y"
        {
            CircMenu()
        }
        else if ch = "n" 
        {
            ProgramMenu().
        }
        else ProgramMenu().
    }
    else if ch = 2
    {
        BlankUI().
        print "║     Selected:     ║" at (0,3).
        print "║   Execute  Node   ║" at (0,4).
        print "║   Confirm: Y  N   ║" at (0,6).
        InputNeeded().

        set ch to terminal:input:getchar().
        if ch = "y"
        {
            ExNode().
        }
        else if ch = "n" 
        {
            ProgramMenu().
        }
        else ProgramMenu().
    }
    else if ch = 3
    {
        BlankUI().
        print "║     Selected:     ║" at (0,3).
        print "║  Transfer:  Moon  ║" at (0,4).
        print "║   Confirm: Y  N   ║" at (0,6).
        InputNeeded().

        set ch to terminal:input:getchar().
        if ch = "y"
        {
            print "not writen yet, come back later".
        }
        else if ch = "n" 
        {
            ProgramMenu().
        }
        else ProgramMenu().
    }
    else if ch = 4
    {
        BlankUI().
        print "║     Selected:     ║" at (0,3).
        print "║      Return       ║" at (0,4).
        print "║   Confirm: Y  N   ║" at (0,6).
        InputNeeded().

        set ch to terminal:input:getchar().
        if ch = "y"
        {
            print "not writen yet, come back later".
        }
        else if ch = "n" 
        {
            ProgramMenu().
        }
        else ProgramMenu().
    }
    else if ch = 5
    {
        BlankUI().
        print "║     Selected:     ║" at (0,3).
        print "║    Information    ║" at (0,4).
        print "║   Confirm: Y  N   ║" at (0,6).
        InputNeeded().

        set ch to terminal:input:getchar().
        if ch = "y"
        {
            print "not writen yet, come back later".
        }
        else if ch = "n" 
        {
            ProgramMenu().
        }
        else ProgramMenu(). 
    }
    else ProgramMenu().
}

function BlankUI
{
clearScreen.
print"
╔═══════════════════╗
║                   ║
╠═══════════════════╣
║                   ║
║                   ║
║                   ║
║                   ║
║                   ║
║                   ║
║                   ║
║                   ║
║                   ║
║                   ║
║                   ║
║                   ║
║                   ║
║                   ║
║                   ║
║                   ║
║                   ║
║                   ║
║                   ║
╠═══════════════════╣
║                   ║
╠═══════════════════╣
║      Ash  AP      ║
║   VERSION 1.A.1   ║
╚═══════════════════╝".
}

function TestUI
{
clearScreen.
print"╔═══════════════════╗
║       (0,1)       ║
╠═══════════════════╣
║       (0,3)       ║
║       (0,4)       ║
║       (0,5)       ║
║       (0,6)       ║
║       (0,7)       ║
║       (0,8)       ║
║       (0,9)       ║
║       (0,10)      ║
║       (0,11)      ║
║       (0,12)      ║
║       (0,13)      ║
║       (0,14)      ║
║       (0,15)      ║
║       (0,16)      ║
║       (0,17)      ║
║       (0,18)      ║
║       (0,19)      ║
║       (0,20)      ║
║       (0,21)      ║
╠═══════════════════╣
║       (0,23)      ║
╠═══════════════════╣
║      Ash  AP      ║
║   VERSION 1.A.1   ║
╚═══════════════════╝".
}

function RoseUI
{
clearScreen.
print "
╔═══════════════════╗
║                   ║
╠═══════════════════╣
║     /-_-\         ║
║    /  /  \        ║
║   /  /    \       ║
║   \  \    /       ║
║    \__\__/        ║
║       \\          ║
║       -\\    ____ ║
║         \\  /   / ║
║   ____   \\/___/  ║
║   \   \ -//       ║
║    \___\//-       ║
║       -//         ║
║        \\         ║
║        //         ║
║       //-         ║
║     -//           ║
║     //            ║
║     \\            ║
║      \\           ║
╠═══════════════════╣
║                   ║
╠═══════════════════╣
║      Ash  AP      ║
║   VERSION 1.A.1   ║
╚═══════════════════╝".
}

function InputNeeded
{
    print "║       Input       ║" at (0,23).
}

function Acknowlege
{
    InputNeeded().
    set hasch to terminal:input:clear().
    set hasch to terminal:input:haschar().
    until hasch = true
    {
        set hasch to terminal:input:haschar().        
    }
    set ch to terminal:input:clear().
    ProgramMenu().
}

function CircMenu
{
    BlankUI().
    print "║  Circularization  ║" at (0,1).
    InputNeeded.
    print "║  Circularize at:  ║" at (0,3).
    set ch to terminal:input:getchar().
    if ch = "A"
    {
        CircAp().
        BlankUI().
        print "║  Circularization  ║" at (0,1).
        print "║   Node  Created   ║" at (0,3).
        print "║     Execute ?     ║" at (0,5).
        print "║       Y   N       ║" at (0, 6).
        set ch to terminal:input:getchar().
        set ch to terminal:input:clear().
        if ch = "Y"
        {
            ExNode().
        }
        else ProgramMenu().
    }
    else if ch = "P" 
    {
        CircPer().
        BlankUI().
        print "║  Circularization  ║" at (0,1).
        print "║   Node  Created   ║" at (0,3).
        print "║     Execute ?     ║" at (0,5).
        print "║       Y   N       ║" at (0, 6).
        set ch to terminal:input:getchar().
        set ch to terminal:input:clear().
        if ch = "Y"
        {
            ExNode().
        }
        else ProgramMenu().
    }
    else ProgramMenu(). 
}