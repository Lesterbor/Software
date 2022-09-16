#ifndef WMRGSQL_H
#define WMRGSQL_H

#include <QObject>

#include "QtSql/QSqlDatabase"
#include "QtSql/QSqlQuery"

struct userInfo
{
    int     _id     = 0;
    QString _name   = "";
    QString _email  = "";
    QString _pass   = "";
};

class WmrgSql : public QObject
{
    Q_OBJECT
public:
    explicit WmrgSql(QObject *parent = nullptr);

    //数据库初始化
    QString SqlInit(void);
    //验证用户邮箱密码
    bool cheekLoading(QString userEmail,QString userPass);
    userInfo getUserInfo(QString userEmail);
    bool addUserInfo(QString userName,QString userEmail,QString userPass);
signals:

private:
    QSqlDatabase m_db;


};



#endif // WMRGSQL_H
