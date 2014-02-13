import QtQuick 2.0
import "./"
Rectangle
{
    id:status
    z:15
    parent:father
    width: fwidth/2
    height: (senceHeight/4)*3
    x:fwidth/4
    y:senceHeight/4
    color: "GREEN"
    property int line
    property int cross
    Component.onCompleted:
    {
        //Request chunk status
        //If there is a player,display city name,nickname,force,and level.
        //If not, display force,tpye(water, flat or something) and status(is it been blocked?)
    }

    Rectangle
    {
        id:closeButton
        x:status.width-50
        width: 50
        height: 50
        color: "Black"
        z:5
        MouseArea
        {
            anchors.fill: parent
            onClicked:
            {
                console.log("close")
                status.destroy();
            }
        }
    }
}
