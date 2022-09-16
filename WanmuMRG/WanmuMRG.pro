QT       += core gui
QT       += sql

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

CONFIG += \
        c++17\
        resources_big\

# You can make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
    aesni/qaesencryption.cpp \
    choosefile.cpp \
    config_ini.cpp \
    filehandle.cpp \
    main.cpp \
    mainwindow.cpp \
    page_login.cpp \
    wmrgsql.cpp

HEADERS += \
    aesni/aesni-enc-cbc.h \
    aesni/aesni-enc-ecb.h \
    aesni/aesni-key-exp.h \
    aesni/qaesencryption.h \
    choosefile.h \
    config_ini.h \
    filehandle.h \
    mainwindow.h \
    page_login.h \
    wmrgsql.h

FORMS += \
    choosefile.ui \
    mainwindow.ui \
    page_login.ui

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

RESOURCES += \
    qss.qrc \
    static.qrc

RC_ICONS=favicon.ico
