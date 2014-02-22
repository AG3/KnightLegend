#include "identeuser.h"

identeUser::identeUser(QtQuick2ApplicationViewer *viewer, QObject *parent) :
    QObject(parent)
{
    window=viewer;
}

void identeUser::login()
{
    window->close();
    father *root=new father();
    root->ctxt=viewer.rootContext();
    root->ctxt->setContextProperty("commander",root);
    root->ctxt->setContextProperty("chatlist",root->msgList);
    viewer.setMainQmlFile(QStringLiteral("qml/KnightLegend/main.qml"));
    //viewer.showFullScreen();//Use this one on Android
    viewer.show();//Use this to on Windows(show a Rect. 1024*768)
}
