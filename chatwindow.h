#ifndef CHATWINDOW_H
#define CHATWINDOW_H

#include <QObject>
#include"QStringList"
#include"QQmlContext"

class chatWindow : public QObject
{
    Q_OBJECT
public:
    explicit chatWindow(QObject *parent = 0);
    QStringList msgList;
    Q_INVOKABLE void addmsg();


signals:
    void NewMsg();

public slots:

};

#endif // CHATWINDOW_H
