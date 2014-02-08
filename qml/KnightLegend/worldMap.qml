import QtQuick 2.0
import "./"
Item
{
    width: fwidth
    height: senceHeight
    //color:"black"
    property int oldx
    property int oldy
    property int i
    property int j
    Image
    {
        z:1
        //anchors.fill: parent
        width:fwidth*10
        height: fheight*10
        id: worldMap

        source: "../../Img/worldMap.png"
        Component.onCompleted:
        {
            commander.askWorldMap()
            var component=Qt.createComponent("chunk.qml")
            for(i=0;i<10;i++)
            {
                for(j=0;j<10;j++)
                {
                    var object = component.createObject(worldMap,{line:i,cross:j});
                }
            }
        }

        MouseArea
        {
            anchors.fill: parent
            id:mousearea
            onPositionChanged:
            {
                if((worldMap.x+mousearea.mouseX-oldx)>=(fwidth*-9) &&
                        (worldMap.x+mousearea.mouseX-oldx)<=0)
                {
                    worldMap.x+=mousearea.mouseX-oldx
                }

                if((worldMap.y+mousearea.mouseY-oldy)>=(fheight*-9) &&
                        (worldMap.y+mousearea.mouseY-oldy)<=0)
                {
                    worldMap.y+=mousearea.mouseY-oldy
                }
            }
            onPressed:
            {
                oldx=mousearea.mouseX
                oldy=mousearea.mouseY
            }
        }
    }
}
