#include "page_login.h"
#include "ui_page_login.h"


#include <QGraphicsDropShadowEffect>
#include <QFile>
#include <QTextStream>
#include <QDebug>
#include <QKeyEvent>
#include <QMessageBox>

page_login::page_login(QWidget *parent) :
    QWidget(parent),
    ui(new Ui::page_login)
{
    ui->setupUi(this);

    //加载qss
    QFile file(":/static/qss/page_login.qss");
    file.open(QFile::ReadOnly);
    QTextStream filetext(&file);
    QString stylesheet = filetext.readAll();
    qApp->setStyleSheet(stylesheet);
    file.close();


    ui->Qtab_function->setCurrentIndex(0);

    ui->lined_useremail->setText(sysConfig.getUserEmail());

    ui->lab_modal->setText(m_sqlLoginIn.SqlInit());
}

page_login::~page_login()
{
    delete ui;
}

void page_login::on_loginBtn_clicked()
{
    loginIn();
}

void page_login::loginIn(){
    QString userEmial = ui->lined_useremail->text();
    QString userPass  = ui->lined_userepass->text();
    if(userEmial == "" ||userPass == ""){
        ui->lab_modal->setText("请将信息填写完整!");
    }else{
        if(m_sqlLoginIn.cheekLoading(userEmial,userPass)){
            sysConfig.setUserEmail(userEmial);
            emit mSendLoginSuccsee();
        }else{
             ui->lab_modal->setText("账号或密码错误!");
        }
    }
}


void page_login::keyPressEvent(QKeyEvent * event){

   if(event->key() == Qt::Key_Enter || event->key() == Qt::Key_Return){
        loginIn();
   }
}

void page_login::on_exitBtn_clicked()
{
    qApp->quit();
}


void page_login::on_exitBtn_2_clicked()
{
    qApp->quit();
}


void page_login::on_loginBtn_2_clicked()
{
    userInfo userInfoBuff;

    QString userName    = ui->lined_rename->text();
    QString userEmial   = ui->lined_reemail->text();
    QString userPass    = ui->lined_repass->text();
    if(userEmial == "" ||userPass == "" ||userName == ""){
        ui->lab_modal2->setText("请将信息填写完整!");
    }else{
        userInfoBuff = m_sqlLoginIn.getUserInfo(ui->lined_reemail->text());
        if(userInfoBuff._email != ""){
            ui->lab_modal2->setText("用户已存在!");
        }else{
            if(m_sqlLoginIn.addUserInfo(userName,userEmial,userPass)){
                ui->lab_modal2->setText("用户注册成功!");
                ui->lined_rename->clear();
                ui->lined_reemail->clear();
                ui->lined_repass->clear();

                QMessageBox::StandardButton  defaultBtn=QMessageBox::NoButton;
                QMessageBox::StandardButton result;
                result=QMessageBox::question(this, "图集消息", "用户注册成功需要跳转到登录页吗？",
                                  QMessageBox::Yes|QMessageBox::No,
                                  defaultBtn);
                if (result==QMessageBox::Yes){
                    ui->Qtab_function->setCurrentIndex(0);
                    ui->lined_useremail->setText(userEmial);
                }
            }else{
                ui->lab_modal2->setText("用户注册失败，请重新注册");
            }
        }
    }
}

