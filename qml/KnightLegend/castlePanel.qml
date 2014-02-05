import QtQuick 2.0
import "./"

Rectangle
{
    id:panel
    width: (fwidth/5)*3
    height: senceHeight
    color: "Red"

    Rectangle
    {
        id:closeButton
        x:panel.width-50
        width: 50
        height: 50
        color: "Black"
        MouseArea
        {
            anchors.fill: parent
            onClicked:
            {
                castlePanelLoader.visible=false;
            }
        }
    }

    Rectangle
    {
        id:castleUpgrade
        x:100
        y:300
        width: 200
        height: 50
        color: "Gray"
        MouseArea
        {
            anchors.fill:parent
            onClicked:
            {
                commander.sendMsg("up,castle")
            }
        }
    }

    MouseArea{anchors.fill: parent}
}
