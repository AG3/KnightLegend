#ifndef NETWORK_H
#define NETWORK_H

#include <QObject>

class NetWork : public QObject
{
    Q_OBJECT
public:
    explicit NetWork(QObject *parent = 0);

    void sendCmd(QString type,QString txt);
signals:

public slots:
    void MsgChecker();

};

#endif // NETWORK_H
