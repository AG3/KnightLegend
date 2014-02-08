import QtQuick 2.0

Rectangle
{
    id:chunk
    width: 50
    height: 50
    z:5
    property int line
    property int cross
    color:"black"
    MouseArea
    {
        anchors.fill: parent
        onClicked:
        {
            console.log(chunk.line,chunk.cross)
        }
    }
    Component.onCompleted:
    {
        console.log("loaded")
        console.log(chunk.line,chunk.cross)
        x=cross*51
        y=line*51
    }
}
