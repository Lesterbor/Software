/********************************************************************************
** Form generated from reading UI file 'page_login.ui'
**
** Created by: Qt User Interface Compiler version 6.2.4
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_PAGE_LOGIN_H
#define UI_PAGE_LOGIN_H

#include <QtCore/QVariant>
#include <QtGui/QIcon>
#include <QtWidgets/QApplication>
#include <QtWidgets/QGridLayout>
#include <QtWidgets/QLabel>
#include <QtWidgets/QLineEdit>
#include <QtWidgets/QPushButton>
#include <QtWidgets/QSpacerItem>
#include <QtWidgets/QTabWidget>
#include <QtWidgets/QWidget>

QT_BEGIN_NAMESPACE

class Ui_page_login
{
public:
    QGridLayout *gridLayout_2;
    QSpacerItem *horizontalSpacer_2;
    QSpacerItem *verticalSpacer;
    QSpacerItem *verticalSpacer_2;
    QSpacerItem *horizontalSpacer;
    QTabWidget *Qtab_function;
    QWidget *Tab_logIn;
    QGridLayout *gridLayout_7;
    QWidget *widget_7;
    QGridLayout *gridLayout_12;
    QWidget *widget;
    QGridLayout *gridLayout_6;
    QLabel *loginIco;
    QWidget *wid_emailBlock;
    QGridLayout *gridLayout;
    QLabel *lab_emailIco;
    QLineEdit *lined_useremail;
    QWidget *widget_4;
    QGridLayout *gridLayout_4;
    QPushButton *exitBtn;
    QPushButton *loginBtn;
    QWidget *wid_passBlock;
    QGridLayout *gridLayout_3;
    QLabel *lab_passIco;
    QLineEdit *lined_userepass;
    QLabel *lab_modal;
    QSpacerItem *verticalSpacer_3;
    QWidget *Tab_register;
    QGridLayout *gridLayout_5;
    QWidget *widget_8;
    QGridLayout *gridLayout_13;
    QLabel *lab_modal2;
    QWidget *wid_reemail;
    QGridLayout *gridLayout_10;
    QLabel *lab_reemail;
    QLineEdit *lined_reemail;
    QSpacerItem *verticalSpacer_5;
    QWidget *wid_rename;
    QGridLayout *gridLayout_11;
    QLineEdit *lined_rename;
    QLabel *lab_rename;
    QWidget *widget_2;
    QGridLayout *gridLayout_8;
    QPushButton *exitBtn_2;
    QPushButton *loginBtn_2;
    QSpacerItem *verticalSpacer_4;
    QWidget *wid_repass;
    QGridLayout *gridLayout_9;
    QLabel *lab_repass;
    QLineEdit *lined_repass;
    QSpacerItem *verticalSpacer_6;

    void setupUi(QWidget *page_login)
    {
        if (page_login->objectName().isEmpty())
            page_login->setObjectName(QString::fromUtf8("page_login"));
        page_login->resize(1024, 576);
        page_login->setMinimumSize(QSize(1024, 576));
        page_login->setMaximumSize(QSize(1024, 576));
        QIcon icon;
        icon.addFile(QString::fromUtf8(":/static/image/loginIcon.png"), QSize(), QIcon::Normal, QIcon::Off);
        page_login->setWindowIcon(icon);
        gridLayout_2 = new QGridLayout(page_login);
        gridLayout_2->setObjectName(QString::fromUtf8("gridLayout_2"));
        horizontalSpacer_2 = new QSpacerItem(40, 20, QSizePolicy::Expanding, QSizePolicy::Minimum);

        gridLayout_2->addItem(horizontalSpacer_2, 1, 2, 1, 1);

        verticalSpacer = new QSpacerItem(20, 40, QSizePolicy::Minimum, QSizePolicy::Expanding);

        gridLayout_2->addItem(verticalSpacer, 2, 1, 1, 1);

        verticalSpacer_2 = new QSpacerItem(20, 40, QSizePolicy::Minimum, QSizePolicy::Expanding);

        gridLayout_2->addItem(verticalSpacer_2, 0, 1, 1, 1);

        horizontalSpacer = new QSpacerItem(40, 20, QSizePolicy::Expanding, QSizePolicy::Minimum);

        gridLayout_2->addItem(horizontalSpacer, 1, 0, 1, 1);

        Qtab_function = new QTabWidget(page_login);
        Qtab_function->setObjectName(QString::fromUtf8("Qtab_function"));
        Qtab_function->setMinimumSize(QSize(450, 320));
        Qtab_function->setMaximumSize(QSize(450, 320));
        Tab_logIn = new QWidget();
        Tab_logIn->setObjectName(QString::fromUtf8("Tab_logIn"));
        gridLayout_7 = new QGridLayout(Tab_logIn);
        gridLayout_7->setObjectName(QString::fromUtf8("gridLayout_7"));
        widget_7 = new QWidget(Tab_logIn);
        widget_7->setObjectName(QString::fromUtf8("widget_7"));
        gridLayout_12 = new QGridLayout(widget_7);
        gridLayout_12->setObjectName(QString::fromUtf8("gridLayout_12"));
        gridLayout_12->setContentsMargins(30, -1, 30, 0);
        widget = new QWidget(widget_7);
        widget->setObjectName(QString::fromUtf8("widget"));
        gridLayout_6 = new QGridLayout(widget);
        gridLayout_6->setObjectName(QString::fromUtf8("gridLayout_6"));
        loginIco = new QLabel(widget);
        loginIco->setObjectName(QString::fromUtf8("loginIco"));
        loginIco->setMinimumSize(QSize(60, 60));
        loginIco->setMaximumSize(QSize(60, 60));
        loginIco->setContextMenuPolicy(Qt::NoContextMenu);

        gridLayout_6->addWidget(loginIco, 0, 0, 1, 1);


        gridLayout_12->addWidget(widget, 0, 0, 1, 1);

        wid_emailBlock = new QWidget(widget_7);
        wid_emailBlock->setObjectName(QString::fromUtf8("wid_emailBlock"));
        wid_emailBlock->setMinimumSize(QSize(0, 40));
        wid_emailBlock->setMaximumSize(QSize(16777215, 40));
        gridLayout = new QGridLayout(wid_emailBlock);
        gridLayout->setObjectName(QString::fromUtf8("gridLayout"));
        gridLayout->setContentsMargins(15, 0, 3, 0);
        lab_emailIco = new QLabel(wid_emailBlock);
        lab_emailIco->setObjectName(QString::fromUtf8("lab_emailIco"));
        lab_emailIco->setMinimumSize(QSize(30, 30));
        lab_emailIco->setMaximumSize(QSize(30, 30));

        gridLayout->addWidget(lab_emailIco, 0, 0, 1, 1);

        lined_useremail = new QLineEdit(wid_emailBlock);
        lined_useremail->setObjectName(QString::fromUtf8("lined_useremail"));

        gridLayout->addWidget(lined_useremail, 0, 1, 1, 1);


        gridLayout_12->addWidget(wid_emailBlock, 1, 0, 1, 1);

        widget_4 = new QWidget(widget_7);
        widget_4->setObjectName(QString::fromUtf8("widget_4"));
        widget_4->setMinimumSize(QSize(0, 50));
        gridLayout_4 = new QGridLayout(widget_4);
        gridLayout_4->setObjectName(QString::fromUtf8("gridLayout_4"));
        gridLayout_4->setContentsMargins(0, -1, 0, -1);
        exitBtn = new QPushButton(widget_4);
        exitBtn->setObjectName(QString::fromUtf8("exitBtn"));

        gridLayout_4->addWidget(exitBtn, 0, 1, 1, 1);

        loginBtn = new QPushButton(widget_4);
        loginBtn->setObjectName(QString::fromUtf8("loginBtn"));

        gridLayout_4->addWidget(loginBtn, 0, 2, 1, 1);


        gridLayout_12->addWidget(widget_4, 4, 0, 1, 1);

        wid_passBlock = new QWidget(widget_7);
        wid_passBlock->setObjectName(QString::fromUtf8("wid_passBlock"));
        wid_passBlock->setMinimumSize(QSize(0, 40));
        wid_passBlock->setMaximumSize(QSize(16777215, 40));
        gridLayout_3 = new QGridLayout(wid_passBlock);
        gridLayout_3->setObjectName(QString::fromUtf8("gridLayout_3"));
        gridLayout_3->setContentsMargins(15, 0, 3, 0);
        lab_passIco = new QLabel(wid_passBlock);
        lab_passIco->setObjectName(QString::fromUtf8("lab_passIco"));
        lab_passIco->setMinimumSize(QSize(30, 30));
        lab_passIco->setMaximumSize(QSize(30, 30));

        gridLayout_3->addWidget(lab_passIco, 0, 0, 1, 1);

        lined_userepass = new QLineEdit(wid_passBlock);
        lined_userepass->setObjectName(QString::fromUtf8("lined_userepass"));
        lined_userepass->setEchoMode(QLineEdit::Password);

        gridLayout_3->addWidget(lined_userepass, 0, 1, 1, 1);


        gridLayout_12->addWidget(wid_passBlock, 3, 0, 1, 1);

        lab_modal = new QLabel(widget_7);
        lab_modal->setObjectName(QString::fromUtf8("lab_modal"));
        lab_modal->setMinimumSize(QSize(0, 20));
        lab_modal->setMaximumSize(QSize(16777215, 20));
        lab_modal->setAlignment(Qt::AlignRight|Qt::AlignTrailing|Qt::AlignVCenter);

        gridLayout_12->addWidget(lab_modal, 5, 0, 1, 1);

        verticalSpacer_3 = new QSpacerItem(20, 10, QSizePolicy::Minimum, QSizePolicy::Fixed);

        gridLayout_12->addItem(verticalSpacer_3, 2, 0, 1, 1);


        gridLayout_7->addWidget(widget_7, 0, 0, 1, 1);

        Qtab_function->addTab(Tab_logIn, QString());
        Tab_register = new QWidget();
        Tab_register->setObjectName(QString::fromUtf8("Tab_register"));
        gridLayout_5 = new QGridLayout(Tab_register);
        gridLayout_5->setObjectName(QString::fromUtf8("gridLayout_5"));
        widget_8 = new QWidget(Tab_register);
        widget_8->setObjectName(QString::fromUtf8("widget_8"));
        gridLayout_13 = new QGridLayout(widget_8);
        gridLayout_13->setObjectName(QString::fromUtf8("gridLayout_13"));
        gridLayout_13->setContentsMargins(30, -1, 30, 0);
        lab_modal2 = new QLabel(widget_8);
        lab_modal2->setObjectName(QString::fromUtf8("lab_modal2"));
        lab_modal2->setMinimumSize(QSize(0, 20));
        lab_modal2->setMaximumSize(QSize(16777215, 20));
        lab_modal2->setAlignment(Qt::AlignRight|Qt::AlignTrailing|Qt::AlignVCenter);

        gridLayout_13->addWidget(lab_modal2, 7, 0, 1, 1);

        wid_reemail = new QWidget(widget_8);
        wid_reemail->setObjectName(QString::fromUtf8("wid_reemail"));
        wid_reemail->setMinimumSize(QSize(0, 40));
        wid_reemail->setMaximumSize(QSize(16777215, 40));
        gridLayout_10 = new QGridLayout(wid_reemail);
        gridLayout_10->setObjectName(QString::fromUtf8("gridLayout_10"));
        gridLayout_10->setContentsMargins(15, 0, 3, 0);
        lab_reemail = new QLabel(wid_reemail);
        lab_reemail->setObjectName(QString::fromUtf8("lab_reemail"));
        lab_reemail->setMinimumSize(QSize(30, 30));
        lab_reemail->setMaximumSize(QSize(30, 30));

        gridLayout_10->addWidget(lab_reemail, 0, 0, 1, 1);

        lined_reemail = new QLineEdit(wid_reemail);
        lined_reemail->setObjectName(QString::fromUtf8("lined_reemail"));

        gridLayout_10->addWidget(lined_reemail, 0, 1, 1, 1);


        gridLayout_13->addWidget(wid_reemail, 3, 0, 1, 1);

        verticalSpacer_5 = new QSpacerItem(20, 10, QSizePolicy::Minimum, QSizePolicy::Fixed);

        gridLayout_13->addItem(verticalSpacer_5, 4, 0, 1, 1);

        wid_rename = new QWidget(widget_8);
        wid_rename->setObjectName(QString::fromUtf8("wid_rename"));
        wid_rename->setMinimumSize(QSize(0, 40));
        wid_rename->setMaximumSize(QSize(16777215, 40));
        gridLayout_11 = new QGridLayout(wid_rename);
        gridLayout_11->setObjectName(QString::fromUtf8("gridLayout_11"));
        gridLayout_11->setContentsMargins(15, 0, 3, 0);
        lined_rename = new QLineEdit(wid_rename);
        lined_rename->setObjectName(QString::fromUtf8("lined_rename"));

        gridLayout_11->addWidget(lined_rename, 0, 1, 1, 1);

        lab_rename = new QLabel(wid_rename);
        lab_rename->setObjectName(QString::fromUtf8("lab_rename"));
        lab_rename->setMinimumSize(QSize(30, 30));
        lab_rename->setMaximumSize(QSize(30, 30));

        gridLayout_11->addWidget(lab_rename, 0, 0, 1, 1);


        gridLayout_13->addWidget(wid_rename, 1, 0, 1, 1);

        widget_2 = new QWidget(widget_8);
        widget_2->setObjectName(QString::fromUtf8("widget_2"));
        widget_2->setMinimumSize(QSize(0, 50));
        gridLayout_8 = new QGridLayout(widget_2);
        gridLayout_8->setObjectName(QString::fromUtf8("gridLayout_8"));
        gridLayout_8->setContentsMargins(0, -1, 0, -1);
        exitBtn_2 = new QPushButton(widget_2);
        exitBtn_2->setObjectName(QString::fromUtf8("exitBtn_2"));

        gridLayout_8->addWidget(exitBtn_2, 0, 1, 1, 1);

        loginBtn_2 = new QPushButton(widget_2);
        loginBtn_2->setObjectName(QString::fromUtf8("loginBtn_2"));

        gridLayout_8->addWidget(loginBtn_2, 0, 2, 1, 1);


        gridLayout_13->addWidget(widget_2, 6, 0, 1, 1);

        verticalSpacer_4 = new QSpacerItem(20, 10, QSizePolicy::Minimum, QSizePolicy::Fixed);

        gridLayout_13->addItem(verticalSpacer_4, 2, 0, 1, 1);

        wid_repass = new QWidget(widget_8);
        wid_repass->setObjectName(QString::fromUtf8("wid_repass"));
        wid_repass->setMinimumSize(QSize(0, 40));
        wid_repass->setMaximumSize(QSize(16777215, 40));
        gridLayout_9 = new QGridLayout(wid_repass);
        gridLayout_9->setObjectName(QString::fromUtf8("gridLayout_9"));
        gridLayout_9->setContentsMargins(15, 0, 3, 0);
        lab_repass = new QLabel(wid_repass);
        lab_repass->setObjectName(QString::fromUtf8("lab_repass"));
        lab_repass->setMinimumSize(QSize(30, 30));
        lab_repass->setMaximumSize(QSize(30, 30));

        gridLayout_9->addWidget(lab_repass, 0, 0, 1, 1);

        lined_repass = new QLineEdit(wid_repass);
        lined_repass->setObjectName(QString::fromUtf8("lined_repass"));

        gridLayout_9->addWidget(lined_repass, 0, 1, 1, 1);


        gridLayout_13->addWidget(wid_repass, 5, 0, 1, 1);

        verticalSpacer_6 = new QSpacerItem(20, 28, QSizePolicy::Minimum, QSizePolicy::Fixed);

        gridLayout_13->addItem(verticalSpacer_6, 0, 0, 1, 1);


        gridLayout_5->addWidget(widget_8, 0, 0, 1, 1);

        Qtab_function->addTab(Tab_register, QString());

        gridLayout_2->addWidget(Qtab_function, 1, 1, 1, 1);


        retranslateUi(page_login);

        Qtab_function->setCurrentIndex(0);


        QMetaObject::connectSlotsByName(page_login);
    } // setupUi

    void retranslateUi(QWidget *page_login)
    {
        page_login->setWindowTitle(QCoreApplication::translate("page_login", "\344\270\207\346\262\220\345\215\203\346\250\212\345\233\276\351\233\206\347\256\241\347\220\206 | \347\231\273\345\275\225", nullptr));
        loginIco->setText(QString());
        lab_emailIco->setText(QString());
        lined_useremail->setPlaceholderText(QCoreApplication::translate("page_login", "\350\257\267\350\276\223\345\205\245\351\202\256\347\256\261", nullptr));
        exitBtn->setText(QCoreApplication::translate("page_login", "\351\200\200\345\207\272", nullptr));
        loginBtn->setText(QCoreApplication::translate("page_login", "\347\231\273\345\275\225", nullptr));
        lab_passIco->setText(QString());
        lined_userepass->setPlaceholderText(QCoreApplication::translate("page_login", "\350\257\267\350\276\223\345\205\245\345\257\206\347\240\201", nullptr));
        lab_modal->setText(QString());
        Qtab_function->setTabText(Qtab_function->indexOf(Tab_logIn), QCoreApplication::translate("page_login", "\347\231\273\345\275\225", nullptr));
        lab_modal2->setText(QString());
        lab_reemail->setText(QString());
        lined_reemail->setPlaceholderText(QCoreApplication::translate("page_login", "\350\257\267\350\276\223\345\205\245\351\202\256\347\256\261", nullptr));
        lined_rename->setPlaceholderText(QCoreApplication::translate("page_login", "\350\257\267\350\276\223\345\205\245\346\230\265\347\247\260", nullptr));
        lab_rename->setText(QString());
        exitBtn_2->setText(QCoreApplication::translate("page_login", "\351\200\200\345\207\272", nullptr));
        loginBtn_2->setText(QCoreApplication::translate("page_login", "\346\263\250\345\206\214", nullptr));
        lab_repass->setText(QString());
        lined_repass->setPlaceholderText(QCoreApplication::translate("page_login", "\350\257\267\350\276\223\345\205\245\345\257\206\347\240\201", nullptr));
        Qtab_function->setTabText(Qtab_function->indexOf(Tab_register), QCoreApplication::translate("page_login", "\346\263\250\345\206\214", nullptr));
    } // retranslateUi

};

namespace Ui {
    class page_login: public Ui_page_login {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_PAGE_LOGIN_H
