function ExNode
//executes next manuever node.
{

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