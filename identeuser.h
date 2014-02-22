#ifndef IDENTEUSER_H
#define IDENTEUSER_H

#include <QObject>
#include"QQmlContext"
#include"qtquick2applicationviewer.h"
#include"father.h"

class identeUser : public QObject
{
    Q_OBJECT
public:
    explicit identeUser(QtQuick2ApplicationViewer *viewer,QObject *parent = 0);
    QQmlContext *ctxt;
    QtQuick2ApplicationViewer viewer,*window;

signals:

public slots:
    void login();
};

#endif // IDENTEUSER_H
