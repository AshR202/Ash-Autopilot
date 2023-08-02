//Ash Autopilot V1 Assent.
//╔  ═  ╗
//║  ╠  ╣
//╚  ═  ╝
//╔═══════════════════╗
//╠═══════════════════╣
//║   Apoapsis Good   ║
//║      mission      ║
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

BlankUI().
set hasch to terminal:input:haschar().
print "║      Assent       ║" at (0,1).
if altitude > 1000 
{
    print "║      Error:       ║" at (0,4).
    print "║    Not Gounded    ║" at (0,5).
    print "║     Acknolege     ║" at (0,7).
    InputNeeded().
    until hasch = true
    {
        set hasch to terminal:input:haschar().        
    }
    set ch to terminal:input:clear().
    ProgramMenu().
}

set targAp to 100000.
set targApDisplay to targAp / 1000.

BlankUI().
print "║ Target  Apoapsis: ║" at (0,3).
print "║       " + padding(targApDisplay,4,0) + "       ║" at (0,4).
InputNeeded().
until hasch = true
    {
        set hasch to terminal:input:haschar().        
    }
    set ch to terminal:input:clear().
BlankUI().
print "║    Countdown:     ║" at (0,3).
print "║         5         ║" at (0,5).
wait 1.
print "║         4         ║" at (0,5).
wait 1.
print "║         3         ║" at (0,5).
wait 1.
print "║         2         ║" at (0,5).
wait 1.
print "║         1         ║" at (0,5).
wait 1.
print "║      Liftoff      ║" at (0,5).

set ShipSteer to Up.
lock steering to Shipsteer.
lock throttle to 1.
stage.

BlankUI().
wait until ship:velocity:surface:mag > 100.
print "║   Gravity  Turn   ║" at (0,3).
print "║       Angle:      ║" at (0,5).
print "║     Apoapsis:     ║" at (0,8).
print "║ Target  Apoapsis: ║" at (0,11).
print "║       " + padding(targApDisplay,4,0) + "       ║" at (0,12).

until apoapsis > targAp
{
    IF SHIP:VELOCITY:SURFACE:MAG < 100 
    {
        set ShipSteer to heading(90,90).
        set angDisplay to 90.
    }

    ELSE IF SHIP:VELOCITY:SURFACE:MAG >= 100 AND SHIP:VELOCITY:SURFACE:MAG < 200 
    {
        SET ShipSteer TO HEADING(90,85).
        set angDisplay to 85.
        }
    ELSE IF SHIP:VELOCITY:SURFACE:MAG >= 200 AND SHIP:VELOCITY:SURFACE:MAG < 300 
    {
        SET ShipSteer TO HEADING(90,80).
        set angDisplay to 80.
        }
    ELSE IF SHIP:VELOCITY:SURFACE:MAG >= 300 AND SHIP:VELOCITY:SURFACE:MAG < 400 
    {
        SET ShipSteer TO HEADING(90,75).
        set angDisplay to 75.
        }
    ELSE IF SHIP:VELOCITY:SURFACE:MAG >= 400 AND SHIP:VELOCITY:SURFACE:MAG < 500 
    {
        SET ShipSteer TO HEADING(90,70).
        set angDisplay to 70.
        }
    ELSE IF SHIP:VELOCITY:SURFACE:MAG >= 500 AND SHIP:VELOCITY:SURFACE:MAG < 600 
    {
        SET ShipSteer TO HEADING(90,60).
        set angDisplay to 60.
        }
    ELSE IF SHIP:VELOCITY:SURFACE:MAG >= 600 AND SHIP:VELOCITY:SURFACE:MAG < 700 
    {
        SET ShipSteer TO HEADING(90,50).
        set angDisplay to 50.
        }
    ELSE IF SHIP:VELOCITY:SURFACE:MAG >= 700 AND SHIP:VELOCITY:SURFACE:MAG < 800 
    {
        SET ShipSteer TO HEADING(90,40).
        set angDisplay to 40.
        }
    ELSE IF SHIP:VELOCITY:SURFACE:MAG >= 800 AND SHIP:VELOCITY:SURFACE:MAG < 900 
    {
        SET ShipSteer TO HEADING(90,30).
        set angDisplay to 30.
    }
    ELSE IF SHIP:VELOCITY:SURFACE:MAG >= 900 AND SHIP:VELOCITY:SURFACE:MAG < 1000 
    {
        SET ShipSteer TO HEADING(90,20).
        set angDisplay to 20.
    }
    ELSE IF SHIP:VELOCITY:SURFACE:MAG >= 1000 AND SHIP:VELOCITY:SURFACE:MAG < 1100 
    {
        SET ShipSteer TO HEADING(90,15).
        set angDisplay to 15.
    }
    ELSE IF SHIP:VELOCITY:SURFACE:MAG >= 1100 and altitude >= 50000
    {

        SET ShipSteer TO HEADING(90,10).
        set angDisplay to 10.

    }

    set ApDisplay to apoapsis.
    print "║      " + padding(ApDisplay,6,0) + "      ║" at (0,9).
    print "║        " + angDisplay + "         ║" at (0,6).
    stage_check().
}
lock throttle to 0.

wait until altitude > 80000.

CircAp().

ExNode().


