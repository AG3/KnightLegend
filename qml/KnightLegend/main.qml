import QtQuick 2.0

Item
{
    width: 1024
    height: 768
    id: father
    property int space
    property int hudButtonS
    property int statusWidth
    property int oldx
    property int oldy
    property int fwidth:father.width
    property int fheight:father.height
    property int senceHeight:(father.height/4)*3

    hudButtonS:((father.height/4)/10)*8
    space:(father.width-father.height)/6
    statusWidth: (father.width-2*space)/4

    //**************Loader-Start**************
    Loader
    {
        x:0
        y:0
        id: chatWin
        visible: false
        z:2
        source:"./chatWindow.qml"
    }

    Loader
    {
        id:mapLoader
        x:0
        y:0
        visible: false
        z: 2
        source: "./worldMap.qml"
    }

    Loader
    {
        id:castlePanelLoader
        x:fwidth/5
        y:0
        visible: false
        z: 2
        source: "./castlePanel.qml"
    }
    //*************Loader-End******************

    //****************Sence-Start**************
    Rectangle
    {
        id:sence
        width: father.width*1.5
        height: father.height*1.5

        Image
        {
            anchors.fill: parent

            source: "qrc:Img/ground.png"
        }

        MouseArea
        {
            anchors.fill: parent
            id:mousearea
            onPositionChanged:
            {
                if((sence.x+mousearea.mouseX-oldx)>=(father.width/-2) &&
                        (sence.x+mousearea.mouseX-oldx)<=0)
                {
                sence.x+=mousearea.mouseX-oldx
                }

                if((sence.y+mousearea.mouseY-oldy)>=(father.height/-2) &&
                        (sence.y+mousearea.mouseY-oldy)<=0)
                {
                sence.y+=mousearea.mouseY-oldy
                }
            }
            onPressed:
            {
                oldx=mousearea.mouseX
                oldy=mousearea.mouseY
            }
        }
    }

    Rectangle
    {
        id:castle
        x:sence.x+100
        y:sence.y+100
        height: 466
        width: 388
        color: "Transparent"
        Image
        {
            anchors.fill: parent
            source: "qrc:Img/castle.png"
        }
        MouseArea
        {
            anchors.fill: castle
            onClicked:
            {
                castlePanelLoader.visible=!castlePanelLoader.visible
            }
        }
    }

    Rectangle
    {
        id:buttonBG
        y: (father.height/4)*3
        width: father.width
        height: father.height/4
        color: "transparent"
        z:10
        Image {
            anchors.fill: parent
            source: "qrc:Img/bg_button.png"
        }
    }

    //**************Button-Start***************
    Rectangle
    {
        id: chat
        y:(father.height/4)*3+(father.height/4)/10
        x: space
        z:11
        width:hudButtonS
        height: hudButtonS
        color:"Transparent"
        Image
        {
            id:chatbgi
            anchors.fill: parent
            source: "qrc:Img/chat.png"
        }
        MouseArea
        {
            anchors.fill: parent
            onPressed:
            {
                chatbgi.source="qrc:Img/chat_down.png"
            }

            onReleased:
            {
                chatbgi.source="qrc:Img/chat.png"
            }

            onClicked:
            {
                chatWin.visible=!chatWin.visible
            }
        }
    }

    Rectangle
    {
        id: map
        y:(father.height/4)*3+(father.height/4)/10
        x: space*2+hudButtonS
        width:hudButtonS
        height: hudButtonS
        z:11
        color:"Transparent"
        Image
        {
            id:mapbgi
            anchors.fill: parent
            source: "qrc:Img/map.png"
        }
        MouseArea
        {
            anchors.fill: parent
            onPressed:
            {
                mapbgi.source="qrc:Img/map_down.png"
            }

            onReleased:
            {
                mapbgi.source="qrc:Img/map.png"
            }

            onClicked:
            {
                mapLoader.visible=!mapLoader.visible
            }
        }
    }

    Rectangle
    {
        id: rank
        y:(father.height/4)*3+(father.height/4)/10
        x: space*3+hudButtonS*2
        z:11
        width:hudButtonS
        height: hudButtonS
        color:"Transparent"
        Image
        {
            id:rankbgi
            anchors.fill: parent
            source: "qrc:Img/rank.png"
        }
        MouseArea
        {
            anchors.fill: parent
            onPressed:
            {
                rankbgi.source="qrc:Img/rank_down.png"
            }

            onReleased:
            {
                rankbgi.source="qrc:Img/rank.png"
            }

            onClicked:
            {

            }
        }
    }

    Rectangle
    {
        id: shop
        y:(father.height/4)*3+(father.height/4)/10
        x: space*4+hudButtonS*3
        z:11
        width:hudButtonS
        height: hudButtonS
        color:"Transparent"
        Image
        {
            id:shopbgi
            anchors.fill: parent
            source: "qrc:Img/shop.png"
        }
        MouseArea
        {
            anchors.fill: parent
            onPressed:
            {
                shopbgi.source="qrc:Img/shop_down.png"
            }

            onReleased:
            {
                shopbgi.source="qrc:Img/shop.png"
            }

            onClicked:
            {

            }
        }
    }

    Rectangle
    {
        id: setting
        y:(father.height/4)*3+(father.height/4)/10
        x: space*5+hudButtonS*4
        z:11
        width:hudButtonS
        height: hudButtonS
        color:"Transparent"
        Image
        {
            id:settingbgi
            anchors.fill: parent
            source: "qrc:Img/setting.png"
        }
        MouseArea
        {
            anchors.fill: parent
            onPressed:
            {
                settingbgi.source="qrc:Img/setting_down.png"
            }

            onReleased:
            {
                settingbgi.source="qrc:Img/setting.png"
            }

            onClicked:
            {

            }
        }
    }
    //**************Button-End***************

    //**************StatusBar-Start***************
    Rectangle
    {
        id:wood
        x:space
        y:0
        width: statusWidth
        height: father.height/15
        color: "Red"
        Text
        {
            text: "text"
            anchors.centerIn: parent
        }
    }

    Rectangle
    {
        id:food
        x:space+statusWidth
        y:0
        width: statusWidth
        height: father.height/15
        color: "Black"
        Text
        {
            text: "text"
            anchors.centerIn: parent
        }
    }

    Rectangle
    {
        id:metal
        x:space+statusWidth*2
        y:0
        width: statusWidth
        height: father.height/15
        color: "Green"
        Text
        {
            text: "text"
            anchors.centerIn: parent
        }
    }

    Rectangle
    {
        id:gold
        x:space+statusWidth*3
        y:0
        width: statusWidth
        height: father.height/15
        color: "Blue"
        Text
        {
            text: "text"
            anchors.centerIn: parent
        }
    }
    //**************StatusBar-End***************
}
