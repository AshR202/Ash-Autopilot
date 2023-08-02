function ExNode
//executes next manuever node.
{
    
    set nd to nextNode.
    set burnTime to getburntime(nd:deltav:mag).
    set ShipSteer to nd:deltav.
    lock steering to ShipSteer.
    wait until vang(ShipSteer, ship:facing:vector) < 0.25.
    wait until nd:eta <= (burnTime/2 + 5).
    wait until vang(ShipSteer, ship:facing:vector) < 0.25.

    set tset to 0.
    lock throttle to tset.
    set done to False.
    set dv0 to nd:deltav.
    until done
    {
        //recalculate current max_acceleration, as it changes while we burn through fuel
        set max_acc to ship:maxthrust/ship:mass.

        //throttle is 100% until there is less than 1 second of time left to burn
        //when there is less than 1 second - decrease the throttle linearly
        set tset to min(nd:deltav:mag/max_acc, 1).

        //here's the tricky part, we need to cut the throttle as soon as our nd:deltav and initial deltav start facing opposite directions
        //this check is done via checking the dot product of those 2 vectors
        if vdot(dv0, nd:deltav) < 0
        {
            lock throttle to 0.
            break.
        }

        //we have very little left to burn, less then 0.1m/s
        if nd:deltav:mag < 0.1
        {
            //we burn slowly until our node vector starts to drift significantly from initial vector
            //this usually means we are on point
            wait until vdot(dv0, nd:deltav) < 0.5.

            lock throttle to 0.
            set done to True.
        }
    }
    unlock steering.
    unlock throttle.
    wait 1.

    //we no longer need the maneuver node
    remove nd.

    //set throttle to 0 just in case.
    SET SHIP:CONTROL:PILOTMAINTHROTTLE TO 0.

}

function CircAp
//creates node to circularize at apoapsis.
{
    set GM to constant:g * kerbin:mass.
    set mTime to time:seconds + eta:apoapsis.
    set v1 to VELOCITYAT(SHIP,mTime):ORBIT:MAG.
    set rad to kerbin:radius + apoapsis.
    set v2 to sqrt(GM / rad).
    set dv to v2 - v1.
    print "v1 " + v1.
    print "v2 " + v2.
    print "GM " +GM.
    print "rad" + rad.
    print "mTime " + mTime.
    print "velocity at: " + velocityAt(ship,mtime).
    set v1 to VELOCITYAT(SHIP, mtime):ORBIT:MAG.
    set myNode to node(mtime,0,0,dv).

    add myNode.
}

function CircPer
//creates node to circularize at periapsis.
{
    set GM to constant:g * kerbin:mass.
    set mTime to time:seconds + eta:periapsis.
    set v1 to VELOCITYAT(SHIP,mTime):ORBIT:MAG.
    set rad to kerbin:radius + periapsis.
    set v2 to sqrt(GM / rad).
    set dv to v2 - v1.
    set v1 to VELOCITYAT(SHIP, mtime):ORBIT:MAG.
    set myNode to node(mtime,0,0,dv).

    add myNode.
}