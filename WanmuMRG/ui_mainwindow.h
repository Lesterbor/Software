/********************************************************************************
** Form generated from reading UI file 'mainwindow.ui'
**
** Created by: Qt User Interface Compiler version 6.2.4
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_MAINWINDOW_H
#define UI_MAINWINDOW_H

#include <QtCore/QVariant>
#include <QtGui/QIcon>
#include <QtWidgets/QApplication>
#include <QtWidgets/QGridLayout>
#include <QtWidgets/QLabel>
#include <QtWidgets/QListWidget>
#include <QtWidgets/QMainWindow>
#include <QtWidgets/QPushButton>
#include <QtWidgets/QSpacerItem>
#include <QtWidgets/QVBoxLayout>
#include <QtWidgets/QWidget>

QT_BEGIN_NAMESPACE

class Ui_MainWindow
{
public:
    QWidget *centralwidget;
    QGridLayout *gridLayout;
    QListWidget *ListWig_Date;
    QListWidget *ListWig_ImgName;
    QWidget *widget;
    QVBoxLayout *verticalLayout;
    QWidget *Wig_head;
    QGridLayout *gridLayout_2;
    QPushButton *Btn_upLoad;
    QSpacerItem *horizontalSpacer;
    QLabel *Lab_ImgView;

    void setupUi(QMainWindow *MainWindow)
    {
        if (MainWindow->objectName().isEmpty())
            MainWindow->setObjectName(QString::fromUtf8("MainWindow"));
        MainWindow->resize(1024, 576);
        MainWindow->setMinimumSize(QSize(1024, 576));
        MainWindow->setContextMenuPolicy(Qt::NoContextMenu);
        MainWindow->setAcceptDrops(false);
        QIcon icon;
        icon.addFile(QString::fromUtf8(":/static/image/icon.png"), QSize(), QIcon::Normal, QIcon::Off);
        MainWindow->setWindowIcon(icon);
        centralwidget = new QWidget(MainWindow);
        centralwidget->setObjectName(QString::fromUtf8("centralwidget"));
        gridLayout = new QGridLayout(centralwidget);
        gridLayout->setObjectName(QString::fromUtf8("gridLayout"));
        ListWig_Date = new QListWidget(centralwidget);
        ListWig_Date->setObjectName(QString::fromUtf8("ListWig_Date"));
        ListWig_Date->setMaximumSize(QSize(70, 16777215));

        gridLayout->addWidget(ListWig_Date, 0, 0, 1, 1);

        ListWig_ImgName = new QListWidget(centralwidget);
        ListWig_ImgName->setObjectName(QString::fromUtf8("ListWig_ImgName"));
        ListWig_ImgName->setMaximumSize(QSize(140, 16777215));

        gridLayout->addWidget(ListWig_ImgName, 0, 1, 1, 1);

        widget = new QWidget(centralwidget);
        widget->setObjectName(QString::fromUtf8("widget"));
        verticalLayout = new QVBoxLayout(widget);
        verticalLayout->setObjectName(QString::fromUtf8("verticalLayout"));
        verticalLayout->setContentsMargins(-1, 0, -1, -1);
        Wig_head = new QWidget(widget);
        Wig_head->setObjectName(QString::fromUtf8("Wig_head"));
        Wig_head->setMaximumSize(QSize(16777215, 40));
        gridLayout_2 = new QGridLayout(Wig_head);
        gridLayout_2->setObjectName(QString::fromUtf8("gridLayout_2"));
        gridLayout_2->setContentsMargins(-1, 0, -1, 0);
        Btn_upLoad = new QPushButton(Wig_head);
        Btn_upLoad->setObjectName(QString::fromUtf8("Btn_upLoad"));

        gridLayout_2->addWidget(Btn_upLoad, 0, 1, 1, 1);

        horizontalSpacer = new QSpacerItem(40, 20, QSizePolicy::Expanding, QSizePolicy::Minimum);

        gridLayout_2->addItem(horizontalSpacer, 0, 0, 1, 1);


        verticalLayout->addWidget(Wig_head);

        Lab_ImgView = new QLabel(widget);
        Lab_ImgView->setObjectName(QString::fromUtf8("Lab_ImgView"));
        QFont font;
        font.setFamilies({QString::fromUtf8("\351\273\221\344\275\223")});
        font.setPointSize(14);
        font.setBold(false);
        Lab_ImgView->setFont(font);
        Lab_ImgView->setAlignment(Qt::AlignCenter);

        verticalLayout->addWidget(Lab_ImgView);


        gridLayout->addWidget(widget, 0, 2, 1, 1);

        MainWindow->setCentralWidget(centralwidget);

        retranslateUi(MainWindow);

        QMetaObject::connectSlotsByName(MainWindow);
    } // setupUi

    void retranslateUi(QMainWindow *MainWindow)
    {
        MainWindow->setWindowTitle(QCoreApplication::translate("MainWindow", "\344\270\207\346\262\220\345\215\203\346\250\212\345\233\276\351\233\206\347\256\241\347\220\206", nullptr));
        Btn_upLoad->setText(QCoreApplication::translate("MainWindow", "\344\270\212\344\274\240\345\233\276\347\211\207", nullptr));
        Lab_ImgView->setText(QString());
    } // retranslateUi

};

namespace Ui {
    class MainWindow: public Ui_MainWindow {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_MAINWINDOW_H
