#ifndef CHOOSEFILE_H
#define CHOOSEFILE_H

#include <QWidget>
#include "filehandle.h"
#include "config_ini.h"

namespace Ui {
class chooseFile;
}

class chooseFile : public QWidget
{
    Q_OBJECT

public:
    explicit chooseFile(QWidget *parent = nullptr);
    ~chooseFile();
    void closeEvent (QCloseEvent * e);

private slots:
    void on_Wig_FileList_itemDoubleClicked(QTableWidgetItem *item);

    void on_Wig_FileList_itemClicked(QTableWidgetItem *item);

    void on_btn_choose_clicked();

    void on_btn_cancle_clicked();

    void on_btn_clear_clicked();

    void on_btn_ok_clicked();

signals:
    void mFilishLoadFile();

private:
    Ui::chooseFile *ui;
    filehandle  m_fileHandle;
    config_ini sysConfig;

    int nowRow = 0;
    bool upLoadFlag = false;
};

#endif // CHOOSEFILE_H
