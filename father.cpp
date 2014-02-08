#include "father.h"
#include"QDebug"

father::father(QObject *parent) :
    QObject(parent)
{
    client=new QTcpSocket();
    client->connectToHost("192.168.1.55",8525);
    connect(this->client,SIGNAL(readyRead()),this,SLOT(msgChecker()));
    msgCount=0;
}


void father::sendMsg(QString msgText)//发送信息(QML只传递命令,ID在这里加)
{
    qDebug()<<msgText;
    QByteArray buffer;
    buffer.append(msgText.toUtf8());
    client->write(buffer.constData(),buffer.size());
    client->waitForBytesWritten(2000);
    buffer.clear();
    return;
}

void father::msgChecker()
{
    qDebug()<<"msg Recived";
    QString reciveData,type,cmd;
    reciveData=client->readAll();
    type=reciveData.split(",").first();
    cmd=reciveData.split(",").last();
    if(type=="chat")
    {
        msgList.append(cmd);
        ctxt->setContextProperty("chatlist",msgList);
    }
    else if(type=="up")
    {

    }
}

int father::getMsgCount()
{
    return msgCount;
}

void father::askWorldMap()
{
    /*
     *Ask serverSide's world map, download them all, refresh the map to QML
     */
}

int father::getChunkColor(int x, int y)
{
    return mapColor[x][y];
}

int father::getChunkUID(int x, int y)
{
    return mapPlayer[x][y];
}
void father::login(QString cmd)
{
    //
}
