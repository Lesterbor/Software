/********************************************************************************
** Form generated from reading UI file 'choosefile.ui'
**
** Created by: Qt User Interface Compiler version 6.2.4
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_CHOOSEFILE_H
#define UI_CHOOSEFILE_H

#include <QtCore/QVariant>
#include <QtGui/QIcon>
#include <QtWidgets/QApplication>
#include <QtWidgets/QGridLayout>
#include <QtWidgets/QHeaderView>
#include <QtWidgets/QLabel>
#include <QtWidgets/QPushButton>
#include <QtWidgets/QSpacerItem>
#include <QtWidgets/QTableWidget>
#include <QtWidgets/QWidget>

QT_BEGIN_NAMESPACE

class Ui_chooseFile
{
public:
    QGridLayout *gridLayout_2;
    QWidget *widget;
    QGridLayout *gridLayout;
    QPushButton *btn_cancle;
    QPushButton *btn_ok;
    QPushButton *btn_choose;
    QSpacerItem *horizontalSpacer;
    QPushButton *btn_clear;
    QWidget *widget_2;
    QGridLayout *gridLayout_3;
    QTableWidget *Wig_FileList;
    QLabel *Lab_ImgView;

    void setupUi(QWidget *chooseFile)
    {
        if (chooseFile->objectName().isEmpty())
            chooseFile->setObjectName(QString::fromUtf8("chooseFile"));
        chooseFile->resize(1024, 400);
        chooseFile->setMinimumSize(QSize(1024, 400));
        chooseFile->setMaximumSize(QSize(1024, 400));
        QIcon icon;
        icon.addFile(QString::fromUtf8(":/static/image/icon.png"), QSize(), QIcon::Normal, QIcon::Off);
        chooseFile->setWindowIcon(icon);
        gridLayout_2 = new QGridLayout(chooseFile);
        gridLayout_2->setObjectName(QString::fromUtf8("gridLayout_2"));
        widget = new QWidget(chooseFile);
        widget->setObjectName(QString::fromUtf8("widget"));
        widget->setMaximumSize(QSize(16777215, 40));
        gridLayout = new QGridLayout(widget);
        gridLayout->setObjectName(QString::fromUtf8("gridLayout"));
        gridLayout->setContentsMargins(-1, 0, -1, 0);
        btn_cancle = new QPushButton(widget);
        btn_cancle->setObjectName(QString::fromUtf8("btn_cancle"));

        gridLayout->addWidget(btn_cancle, 0, 3, 1, 1);

        btn_ok = new QPushButton(widget);
        btn_ok->setObjectName(QString::fromUtf8("btn_ok"));

        gridLayout->addWidget(btn_ok, 0, 5, 1, 1);

        btn_choose = new QPushButton(widget);
        btn_choose->setObjectName(QString::fromUtf8("btn_choose"));

        gridLayout->addWidget(btn_choose, 0, 0, 1, 1);

        horizontalSpacer = new QSpacerItem(40, 20, QSizePolicy::Expanding, QSizePolicy::Minimum);

        gridLayout->addItem(horizontalSpacer, 0, 1, 1, 1);

        btn_clear = new QPushButton(widget);
        btn_clear->setObjectName(QString::fromUtf8("btn_clear"));

        gridLayout->addWidget(btn_clear, 0, 4, 1, 1);


        gridLayout_2->addWidget(widget, 1, 0, 1, 1);

        widget_2 = new QWidget(chooseFile);
        widget_2->setObjectName(QString::fromUtf8("widget_2"));
        gridLayout_3 = new QGridLayout(widget_2);
        gridLayout_3->setObjectName(QString::fromUtf8("gridLayout_3"));
        gridLayout_3->setContentsMargins(0, 0, 0, 0);
        Wig_FileList = new QTableWidget(widget_2);
        Wig_FileList->setObjectName(QString::fromUtf8("Wig_FileList"));
        Wig_FileList->setMinimumSize(QSize(643, 0));
        Wig_FileList->setMaximumSize(QSize(643, 16777215));

        gridLayout_3->addWidget(Wig_FileList, 0, 0, 1, 1);

        Lab_ImgView = new QLabel(widget_2);
        Lab_ImgView->setObjectName(QString::fromUtf8("Lab_ImgView"));
        Lab_ImgView->setMinimumSize(QSize(328, 0));
        Lab_ImgView->setMaximumSize(QSize(328, 16777215));
        Lab_ImgView->setAlignment(Qt::AlignCenter);

        gridLayout_3->addWidget(Lab_ImgView, 0, 1, 1, 1);


        gridLayout_2->addWidget(widget_2, 0, 0, 1, 1);


        retranslateUi(chooseFile);

        QMetaObject::connectSlotsByName(chooseFile);
    } // setupUi

    void retranslateUi(QWidget *chooseFile)
    {
        chooseFile->setWindowTitle(QCoreApplication::translate("chooseFile", "\344\270\207\346\262\220\345\215\203\346\250\212\345\233\276\351\233\206\347\256\241\347\220\206 | \344\270\212\344\274\240\345\233\276\347\211\207", nullptr));
        btn_cancle->setText(QCoreApplication::translate("chooseFile", "\345\217\226\346\266\210", nullptr));
        btn_ok->setText(QCoreApplication::translate("chooseFile", "\347\241\256\350\256\244\345\212\240\345\257\206", nullptr));
        btn_choose->setText(QCoreApplication::translate("chooseFile", "\351\200\211\346\213\251\345\233\276\347\211\207", nullptr));
        btn_clear->setText(QCoreApplication::translate("chooseFile", "\346\270\205\351\231\244\350\241\250\346\240\274", nullptr));
        Lab_ImgView->setText(QCoreApplication::translate("chooseFile", "\346\227\240\351\242\204\350\247\210\345\233\276\347\211\207", nullptr));
    } // retranslateUi

};

namespace Ui {
    class chooseFile: public Ui_chooseFile {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_CHOOSEFILE_H
