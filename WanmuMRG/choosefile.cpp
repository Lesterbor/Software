#include "choosefile.h"
#include "ui_choosefile.h"

#include <QFileDialog>
#include <QMessageBox>


chooseFile::chooseFile(QWidget *parent) :
    QWidget(parent),
    ui(new Ui::chooseFile)
{
    ui->setupUi(this);


    ui->Wig_FileList->setColumnCount(4); //设置列数

    ui->Wig_FileList->horizontalHeader()->setHighlightSections(false);
    ui->Wig_FileList->setShowGrid(false);//网格线不可见
    ui->Wig_FileList->setFocusPolicy(Qt::NoFocus);
    ui->Wig_FileList->setSelectionBehavior(QTableWidget::SelectRows);
    ui->Wig_FileList->verticalHeader()->hide();//取消行号
    ui->Wig_FileList->setEditTriggers(QAbstractItemView::NoEditTriggers);
    ui->Wig_FileList->horizontalHeader()->resizeSection(0, 50);
    ui->Wig_FileList->horizontalHeader()->resizeSection(1, 150);
    ui->Wig_FileList->horizontalHeader()->resizeSection(2, 350);
    ui->Wig_FileList->horizontalHeader()->resizeSection(3, 93);

    QStringList header;
    header<<"序号"<<"时间"<<"文件路径"<<"状态";
    ui->Wig_FileList->setHorizontalHeaderLabels(header);


}

chooseFile::~chooseFile()
{
    delete ui;
}

void chooseFile::closeEvent (QCloseEvent * e){
    for(int i = 0 ; i < nowRow ; i++){
        ui->Wig_FileList->removeRow(0);
    }
    nowRow = 0;
    qDebug()<<e;


    emit mFilishLoadFile();
}

void chooseFile::on_Wig_FileList_itemDoubleClicked(QTableWidgetItem *item)
{
    QMessageBox::StandardButton  defaultBtn=QMessageBox::NoButton;
    QMessageBox::StandardButton result;
    result=QMessageBox::question(this, "图集消息", "确认删除该图片？",
                      QMessageBox::Yes|QMessageBox::No,
                      defaultBtn);
    if (result==QMessageBox::Yes){
        ui->Wig_FileList->removeRow(item->row());
        nowRow--;
    }
}

void chooseFile::on_Wig_FileList_itemClicked(QTableWidgetItem *item)
{
    m_fileHandle.adaptShowImg(ui->Lab_ImgView,ui->Wig_FileList->item(item->row(),2)->text());
}


void chooseFile::on_btn_choose_clicked()
{
    QStringList filePathList = QFileDialog::getOpenFileNames(this, tr("选择图片"), ".", tr("Image Files(*.jpg *.png)"));
    if(upLoadFlag){
        for(int i = 0 ; i < nowRow ; i++){
            ui->Wig_FileList->removeRow(0);
        }
        nowRow = 0;
        upLoadFlag = false;
    }
    foreach (auto filePath, filePathList) {
        QDateTime current_date_time = QDateTime::currentDateTime();
        QString nowTime = current_date_time.toString("yyyy-MM-dd hh:mm:ss");

        ui->Wig_FileList->setVerticalScrollBarPolicy(Qt::ScrollBarAlwaysOff);//隐藏滚动条
        ui->Wig_FileList->setHorizontalScrollBarPolicy(Qt::ScrollBarAlwaysOff);

        ui->Wig_FileList->insertRow(nowRow);

        ui->Wig_FileList->setItem(nowRow,0,new QTableWidgetItem(QString("%1").arg(nowRow+1)));
        ui->Wig_FileList->item(nowRow,0)->setTextAlignment(Qt::AlignHCenter|Qt::AlignVCenter);
        ui->Wig_FileList->setItem(nowRow,1,new QTableWidgetItem(nowTime));
        ui->Wig_FileList->item(nowRow,1)->setTextAlignment(Qt::AlignHCenter|Qt::AlignVCenter);
        ui->Wig_FileList->setItem(nowRow,2,new QTableWidgetItem(filePath));
        ui->Wig_FileList->setItem(nowRow,3,new QTableWidgetItem("待加密"));
        ui->Wig_FileList->item(nowRow,3)->setTextAlignment(Qt::AlignHCenter|Qt::AlignVCenter);
        nowRow++;
    }
}


void chooseFile::on_btn_cancle_clicked()
{
    for(int i = 0 ; i < nowRow ; i++){
        ui->Wig_FileList->removeRow(0);
    }
    nowRow = 0;
    chooseFile::close();
}


void chooseFile::on_btn_clear_clicked()
{
    for(int i = 0 ; i < nowRow ; i++){
        ui->Wig_FileList->removeRow(0);
    }
    nowRow = 0;
    upLoadFlag = false;
}


void chooseFile::on_btn_ok_clicked()
{
    if(!upLoadFlag){
        for(int i=0;i<nowRow;i++){
            m_fileHandle.encryptionImage(ui->Wig_FileList->item(i,2)->text(),sysConfig.getUserEmail());
            ui->Wig_FileList->item(i,3)->setText("加密完成");
        }
        upLoadFlag = true;
    }

}

