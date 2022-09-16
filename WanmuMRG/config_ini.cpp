#include "config_ini.h"

config_ini::config_ini()
{

}

void config_ini::setUserEmail(QString Email){
    QSettings *config = new QSettings("./user.ini", QSettings::IniFormat);
    QByteArray uidb64 = Email.toLocal8Bit().toBase64();
    QString userEmail = QString::fromLocal8Bit(uidb64);

    //将信息写入配置文件
    config -> beginGroup("user");
    config -> setValue("email", userEmail);
    config -> endGroup();
}

QString config_ini::getUserEmail(void){
    QSettings *config = new QSettings("./user.ini", QSettings::IniFormat);

    QString Eamil = config -> value(QString("user/") + "email").toString();
    QByteArray uidb64 = QByteArray::fromBase64(Eamil.toLocal8Bit());
    QString userEmail = QString::fromLocal8Bit(uidb64);
    return userEmail;
}
