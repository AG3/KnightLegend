#include "network.h"

NetWork::NetWork(QObject *parent) :
    QObject(parent)
{
    connect(this->client,SIGNAL(readyRead()),this,SLOT(MsgChecker());
}

void NetWork::MsgChecker()
{
    QString reciveData,type,cmd;
    reciveData=client.readAll();
    type=reciveData.split(",").first();
    cmd=reciveData.split(",").last();
}
