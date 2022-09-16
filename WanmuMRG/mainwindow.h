#ifndef MAINWINDOW_H
#define MAINWINDOW_H

#include <QListWidget>
#include <QMainWindow>

#include "page_login.h"
#include "config_ini.h"
#include "filehandle.h"
#include "choosefile.h"

QT_BEGIN_NAMESPACE
namespace Ui { class MainWindow; }
QT_END_NAMESPACE

class MainWindow : public QMainWindow
{
    Q_OBJECT

public:
    MainWindow(QWidget *parent = nullptr);
    ~MainWindow();


private slots:
    void on_ListWig_Date_itemClicked(QListWidgetItem *item);

    void on_ListWig_ImgName_itemClicked(QListWidgetItem *item);

    void on_Btn_upLoad_clicked();

private:
    Ui::MainWindow *ui;
    page_login m_dlglogin;
    chooseFile m_chooseFile;

    config_ini sysConfig;
    filehandle  m_fileHandle;
};
#endif // MAINWINDOW_H
