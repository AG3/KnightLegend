#ifndef FATHER_H
#define FATHER_H

#include <QObject>
#include "qtquick2applicationviewer.h"
#include"QQmlContext"
#include"QStringList"
#include"QTcpSocket"
#include"QByteArray"
#include"QDeclarativeEngine"

class father : public QObject
{
    Q_OBJECT
public:
    explicit father(QObject *parent = 0);
    QStringList msgList;
    QQmlContext *ctxt;
    QTcpSocket *client;
    int msgCount;

public slots:
    void sendMsg(QString msgText);
    void msgChecker();
    int getMsgCount();

private:


};

#endif // FATHER_H
