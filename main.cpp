#include <QApplication>
#include"father.h"
#include"QDebug"
#include"QTextCodec"
//#include"QDeclarativeComponent"
int main(int argc, char *argv[])
{
    QApplication app(argc, argv);

    father *root=new father();

    QtQuick2ApplicationViewer viewer;

    //qmlRegisterType<father>("Father",1,0,"Father");

    root->ctxt=viewer.rootContext();
    root->ctxt->setContextProperty("commander",root);
    root->ctxt->setContextProperty("chatlist",root->msgList);
    viewer.setMainQmlFile(QStringLiteral("qml/KnightLegend/main.qml"));
    viewer.show();

    return app.exec();
}
