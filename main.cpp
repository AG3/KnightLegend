#include <QApplication>
#include"father.h"
#include"QDebug"
#include"QTextCodec"
//#include"QDeclarativeComponent"
#include"identeuser.h"
int main(int argc, char *argv[])
{
    QApplication app(argc, argv);

    father *root=new father();
    identeUser *idente=new identeUser();
    QtQuick2ApplicationViewer viewer;

    //qmlRegisterType<father>("Father",1,0,"Father");

    root->ctxt=viewer.rootContext();
    root->ctxt->setContextProperty("idente",idente);
    root->ctxt->setContextProperty("commander",root);
    root->ctxt->setContextProperty("chatlist",root->msgList);
    viewer.setMainQmlFile(QStringLiteral("qml/KnightLegend/main.qml"));
    //viewer.showFullScreen();//Use this one on Android
    viewer.show();//Use this to on Windows(show a Rect. 1024*768)
    return app.exec();
}
