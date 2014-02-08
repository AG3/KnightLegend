import QtQuick 2.0

Rectangle
{
    width: 1024
    height: 768
    color: "black"
    Image
    {
        x:0
        y:0
        width: parent.width
        height: parent.width
        source: "WTF?I wanna a GREAT pic to show my GREAT game at player open my game"
    }

    Rectangle//login Rect
    {
        x:parent.width/3
        y:parent.height/3
        width:parent.width/3
        height:parent.height/3;
        color:"Gray"
        TextInput//userID
        {
            id:userID
            z:2
            width:(parent.width/10)*8
            height:parent.height/4
            x:parent.width/10
            y:10
            text:"UserName"
        }
        TextInput//pw
        {
            id:pw
            z:2
            width:(parent.width/10)*8
            height:parent.height/4
            x:parent.width/10
            y:20+parent.height/4
            text:"Password"

        }
        Rectangle//login button
        {
            width:parent.width/2-20
            height:parent.height/4
            x:10
            y:(parent.height/4)*3
            MouseArea
            {
                anchors.fill: parent
                onClicked:
                {
                    commander.login("login,"+userID.text+" "+pw.text)
                }
            }

        }
        Rectangle//register
        {
            width:parent.width/2-20
            height:parent.height/4
            x:parent.width/2+10
            y:(parent.height/4)*3
        }
    }
}
