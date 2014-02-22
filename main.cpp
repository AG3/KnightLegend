#include <QApplication>

#include"QDebug"
#include"QTextCodec"
#include"qtquick2applicationviewer.h"

#include"identeuser.h"
int main(int argc, char *argv[])
{
    QApplication app(argc, argv);



    QtQuick2ApplicationViewer loginUI;
    identeUser *idente=new identeUser(&loginUI);

    idente->ctxt=loginUI.rootContext();
    idente->ctxt->setContextProperty("idente",idente);
    loginUI.setMainQmlFile("qml/KnightLegend/login.qml");
    loginUI.show();

    /*root->ctxt=viewer.rootContext();
    root->ctxt->setContextProperty("commander",root);
    root->ctxt->setContextProperty("chatlist",root->msgList);
    viewer.setMainQmlFile(QStringLiteral("qml/KnightLegend/main.qml"));
    //viewer.showFullScreen();//Use this one on Android
    viewer.show();//Use this to on Windows(show a Rect. 1024*768)*/


    return app.exec();
}
