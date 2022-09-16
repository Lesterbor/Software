#ifndef PAGE_LOGIN_H
#define PAGE_LOGIN_H

#include <QWidget>
#include "wmrgsql.h"
#include "config_ini.h"

namespace Ui {
class page_login;
}

class page_login : public QWidget
{
    Q_OBJECT

public:
    explicit page_login(QWidget *parent = nullptr);
    ~page_login();
    void loginIn();

signals:
    void mSendLoginSuccsee();

private slots:
    void on_loginBtn_clicked();
    void keyPressEvent(QKeyEvent *event);

    void on_exitBtn_clicked();

    void on_exitBtn_2_clicked();

    void on_loginBtn_2_clicked();

private:
    Ui::page_login *ui;
    WmrgSql m_sqlLoginIn;
    config_ini sysConfig;
};

#endif // PAGE_LOGIN_H
