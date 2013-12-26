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


void father::sendMsg(QString msgText)
{
    QByteArray buffer;
    //qDebug()<<msgText.toUtf8()<<msgText.toUtf8().size();
    buffer.append("chat,");
    buffer.append(msgText.toUtf8());
    client->write(buffer.constData(),buffer.size());
    client->waitForBytesWritten(5000);
    buffer.clear();
    /*msgList.append(msgText);
    msgCount++;
    ctxt->setContextProperty("chatlist",msgList);*/
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
}

int father::getMsgCount()
{
    return msgCount;
}
