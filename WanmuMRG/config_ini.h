#ifndef CONFIG_INI_H
#define CONFIG_INI_H

#include <QObject>

#include <QSettings>
#include <QFileInfo>

class config_ini : public QObject
{
    Q_OBJECT
public:
    config_ini();
    void setUserEmail(QString Email);
    QString getUserEmail(void);

};

#endif // CONFIG_INI_H

