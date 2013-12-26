import QtQuick 2.0
import "main.qml"

Rectangle
{
    id:cw


    height: (fheight/4)*3


    ListView
    {
        id:chat
        width: (fwidth/3)*2
        height: cw.height-50
        model:chatlist
        delegate: Rectangle{
            height: 50;
            width:200;
            Text {
            text: modelData
            }
        }

        Image//Background
        {
            anchors.fill:parent
            source:"qrc:Penguins.jpg"
            z:-2
        }
        MouseArea
        {
            anchors.fill: parent
        }
    }

    Rectangle
    {
        id:enter
        width: 50
        height: 50
        x:(fwidth/3)*2-50
        y:cw.height-50
        color: "BLACK"
        MouseArea
        {
            anchors.fill: parent
            onClicked:
            {
                commander.sendMsg(input.text)
                input.text=""
            }
        }
    }


    TextInput
    {
        id:input
        y:cw.height-50
        width: (fwidth/3)*2-50
        height: 50
        //text: "Hello World!"
        //font.family: "Helvetica"
        font.pointSize: 20
        color: "black"
        focus: true
        autoScroll : true
        Image//Background
        {
            anchors.fill:parent
            source:"qrc:Penguins.jpg"
            z:-1
        }
    }


}
