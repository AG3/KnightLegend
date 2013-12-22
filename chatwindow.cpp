#include "chatwindow.h"
#include"QDebug"
chatWindow::chatWindow(QObject *parent) :
    QObject(parent)
{
}
void chatWindow::addmsg()
{
    qDebug()<<"add";
    msgList.append("asd");
    emit NewMsg();
    return;
}
