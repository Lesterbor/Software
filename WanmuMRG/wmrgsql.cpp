#include "wmrgsql.h"
#include "QCoreApplication"
#include "QDebug"

WmrgSql::WmrgSql(QObject *parent)
    : QObject{parent}
{

}

QString WmrgSql::SqlInit(){

    auto str = "wanmumrg";
    m_db = QSqlDatabase::addDatabase("QSQLITE");
    //创建数据库文件
    m_db.setDatabaseName(str);
    m_db.open();
    if(!m_db.isOpen()){
        return "数据库连接失败";
    }else{
        //判断有无用户数据表
        QSqlQuery query;
        query.exec(QString("SELECT name FROM sqlite_master WHERE type='table' AND name='user'"));

        if(!query.next()){
            //如果没有数据表新建数据表
            query.exec(QString("create table user(_id integer primary key,_name text(50),_email text(50),_pass text(50))"));
        }
        return "数据库连接成功";
    }
}

bool WmrgSql::cheekLoading(QString userEmail,QString userPass){
    QSqlQuery query;
    QString strSql = QString("SELECT * FROM 'user' WHERE _email = '%1' AND _pass = '%2'").arg(userEmail).arg(userPass);
    if(query.exec(strSql)){
        return(query.next());
    }else{
        return false;
    }
}

userInfo WmrgSql::getUserInfo(QString userEmail){

    userInfo usreInfoBuff;
    QSqlQuery query;

    QString strSql = QString("SELECT * FROM 'user' WHERE _email = '%1'").arg(userEmail);
    if(query.exec(strSql)){
        if(query.next()){
            usreInfoBuff._id    = query.value(0).toUInt();
            usreInfoBuff._name  = query.value(1).toString();
            usreInfoBuff._email = query.value(2).toString();
            usreInfoBuff._pass  = "";
        }else{
            return usreInfoBuff;
        }
    }
    return usreInfoBuff;
}

bool WmrgSql::addUserInfo(QString userName,QString userEmail,QString userPass){
    QSqlQuery query;
    QString strSql = QString("INSERT INTO user (_name,_email,_pass) values('%1','%2','%3')").arg(userName).arg(userEmail).arg(userPass);
    if(query.exec(strSql)){
        return true;
    }else{
        return false;
    }
}


