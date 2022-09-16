#ifndef FILEHANDLE_H
#define FILEHANDLE_H

#include <QLabel>
#include <QObject>
#include <QTableWidget>


class filehandle : public QObject
{
    Q_OBJECT
public:
    filehandle();
    QStringList getFileDirectory(QString filePath,int Type);

    void decryptImage(QLabel* Label,QString imgSrc,QString key);
    void adaptShowImg(QLabel* Label,QString imgSrc);

    void encryptionImage(QString imgSrc,QString key);

    #define m_Folder  0
    #define m_File    1


};

#endif // FILEHANDLE_H
