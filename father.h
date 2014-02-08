#ifndef FATHER_H
#define FATHER_H

#include <QObject>
#include "qtquick2applicationviewer.h"
#include"QQmlContext"
#include"QStringList"
#include"QTcpSocket"
#include"QByteArray"


class father : public QObject
{
    Q_OBJECT
public:
    explicit father(QObject *parent = 0);
    QStringList msgList;
    QQmlContext *ctxt;
    QTcpSocket *client;
    QString ID;

    int mapColor[256][256],mapPlayer[256][256];
    int msgCount;

public slots:
    void sendMsg(QString msgText);
    void msgChecker();
    void askWorldMap();
    int getMsgCount();
    int getChunkColor(int x,int y);
    int getChunkUID(int x,int y);
    void login(QString cmd);

private:


};

#endif // FATHER_H
