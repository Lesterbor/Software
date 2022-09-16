#include "filehandle.h"
#include <QDir>
#include <QPushButton>

#include "aesni/qaesencryption.h"

filehandle::filehandle()
{

}

QStringList filehandle::getFileDirectory(QString filePath,int Type){
    QStringList DateItemList;

    QDir dir(filePath);

    QFileInfoList fileInfoList = dir.entryInfoList(QDir::Files | QDir::NoDotAndDotDot | QDir::Dirs);
    foreach (auto fileInfo, fileInfoList) {
        if(Type){
            if(fileInfo.isFile()) {
               DateItemList.append(fileInfo.fileName());
            }
        }else{
            if(fileInfo.isDir()) {
               DateItemList.append(fileInfo.fileName());
            }
        }
    }
    return DateItemList;
}

void filehandle::adaptShowImg(QLabel* Label,QString imgSrc){

    float imageWidth = 0.0;
    float imageHeight = 0.0;

    QPixmap image(imgSrc);
    if(!image.isNull()){
        float Proportion = (float)image.width() / image.height();
        if(Proportion > 1){
            imageWidth  = Label->width();
            imageHeight = imageWidth/Proportion;
        }else{
            imageHeight  = Label->height();
            imageWidth = imageHeight*Proportion;
        }
        image = image.scaled((int)imageWidth,(int)imageHeight,Qt::IgnoreAspectRatio, Qt::SmoothTransformation);
        Label->setPixmap(image);
        Label->show();
    }else{
        Label->setText("图片解密失败！");
        Label->repaint();
    }
}

void filehandle::decryptImage(QLabel* Label,QString imgSrc,QString key){
    //文件信息
    QFileInfo l_info(imgSrc);
    QFile file(imgSrc);
    //设置打开方式
    file.open(QIODevice::ReadOnly);
    //获取文件内容
    QByteArray m_dataIn = file.readAll();
    //关闭文件
    file.close();

    QString tempSrc = "./temp." + l_info.suffix();
    QFile temp_path(tempSrc);

    temp_path.open(QIODevice::WriteOnly);

    QByteArray m_dataOut;    // 输出内容
    QAESEncryption encryption(QAESEncryption::AES_128, QAESEncryption::ECB, QAESEncryption::PKCS7);
    m_dataOut.append(encryption.decode(m_dataIn, key.trimmed().toUtf8()));

    temp_path.write(m_dataOut);
    temp_path.close();
    //显示图片
    adaptShowImg(Label,tempSrc);
}



void filehandle::encryptionImage(QString imgSrc,QString key){
    //以当前时间年月创建文件夹分类
    QString folderName ="./imgSrc/"+QDate::currentDate().toString("yyyy-MM")+'/';
    // 检查目录是否存在，若不存在则新建
    QDir dir;
    if(!dir.exists(folderName)){
        dir.mkpath(folderName);
    }

    //文件信息
    QFileInfo l_info(imgSrc);
    //打开待加密文件
    QFile file(imgSrc);
    //设置打开方式
    file.open(QIODevice::ReadOnly);
    //获取文件内容
    QByteArray m_dataIn = file.readAll();
    //关闭文件
    file.close();

    //利用当前时间戳作为文件名称创建文件
    QString timeStamp = QString::number(QDateTime::currentDateTime().toMSecsSinceEpoch(), 10);
    QString makeFilePath = folderName + timeStamp +'.' + l_info.suffix();
    QFile temp_path(makeFilePath);

    temp_path.open(QIODevice::WriteOnly);

    QAESEncryption encryption(QAESEncryption::AES_128, QAESEncryption::ECB, QAESEncryption::PKCS7);

    QByteArray m_dataOut;    // 输出内容

    m_dataOut.append(encryption.encode(m_dataIn, key.trimmed().toUtf8()));

    temp_path.write(m_dataOut);
    temp_path.close();
}
