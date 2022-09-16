#include "mainwindow.h"
#include "ui_mainwindow.h"
#include <QFileDialog>


QString imgFilePathFolder = "";

MainWindow::MainWindow(QWidget *parent)
    : QMainWindow(parent)
    , ui(new Ui::MainWindow)
{
    ui->setupUi(this);
    m_dlglogin.show();

    //登录成功事件
    connect(&m_dlglogin,&page_login::mSendLoginSuccsee,this,[=](){
        this->show();       //打开主页面页面
        m_dlglogin.hide();  //关闭登录页面

        ui->ListWig_Date->setVerticalScrollBarPolicy(Qt::ScrollBarAlwaysOff);
        ui->ListWig_Date->setHorizontalScrollBarPolicy(Qt::ScrollBarAlwaysOff);
        ui->ListWig_ImgName->setVerticalScrollBarPolicy(Qt::ScrollBarAlwaysOff);
        ui->ListWig_ImgName->setHorizontalScrollBarPolicy(Qt::ScrollBarAlwaysOff);


        ui->ListWig_Date->addItems(m_fileHandle.getFileDirectory("./imgSrc",m_Folder));
        ui->ListWig_Date->sortItems();

        ui->Lab_ImgView->setText("没有预览图片");
    });

    //文件上传完成事件
    connect(&m_chooseFile,&chooseFile::mFilishLoadFile,this,[=](){
        ui->ListWig_Date->clear();
        ui->ListWig_Date->addItems(m_fileHandle.getFileDirectory("./imgSrc",m_Folder));
        ui->ListWig_Date->sortItems();
    });



}

MainWindow::~MainWindow()
{
    delete ui;
}

void MainWindow::on_ListWig_Date_itemClicked(QListWidgetItem *item)
{
    imgFilePathFolder = "./imgSrc/"+item->text()+'/';
    ui->ListWig_ImgName->clear();
    ui->ListWig_ImgName->addItems(m_fileHandle.getFileDirectory(imgFilePathFolder,m_File));
    ui->ListWig_ImgName->sortItems();
}


void MainWindow::on_ListWig_ImgName_itemClicked(QListWidgetItem *item)
{
    QString imgFilePath = imgFilePathFolder + item->text();
    //文件预览解密
    ui->Lab_ImgView->setText("图片解密中。。。");
    ui->Lab_ImgView->repaint();
    m_fileHandle.decryptImage(ui->Lab_ImgView,imgFilePath,sysConfig.getUserEmail());
}


void MainWindow::on_Btn_upLoad_clicked()
{
    m_chooseFile.setWindowModality(Qt::ApplicationModal);
    m_chooseFile.show();

}

