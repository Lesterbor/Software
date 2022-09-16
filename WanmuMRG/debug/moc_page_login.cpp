/****************************************************************************
** Meta object code from reading C++ file 'page_login.h'
**
** Created by: The Qt Meta Object Compiler version 68 (Qt 6.2.4)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include <memory>
#include "../page_login.h"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'page_login.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 68
#error "This file was generated using the moc from 6.2.4. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
QT_WARNING_PUSH
QT_WARNING_DISABLE_DEPRECATED
struct qt_meta_stringdata_page_login_t {
    const uint offsetsAndSize[20];
    char stringdata0[143];
};
#define QT_MOC_LITERAL(ofs, len) \
    uint(offsetof(qt_meta_stringdata_page_login_t, stringdata0) + ofs), len 
static const qt_meta_stringdata_page_login_t qt_meta_stringdata_page_login = {
    {
QT_MOC_LITERAL(0, 10), // "page_login"
QT_MOC_LITERAL(11, 17), // "mSendLoginSuccsee"
QT_MOC_LITERAL(29, 0), // ""
QT_MOC_LITERAL(30, 19), // "on_loginBtn_clicked"
QT_MOC_LITERAL(50, 13), // "keyPressEvent"
QT_MOC_LITERAL(64, 10), // "QKeyEvent*"
QT_MOC_LITERAL(75, 5), // "event"
QT_MOC_LITERAL(81, 18), // "on_exitBtn_clicked"
QT_MOC_LITERAL(100, 20), // "on_exitBtn_2_clicked"
QT_MOC_LITERAL(121, 21) // "on_loginBtn_2_clicked"

    },
    "page_login\0mSendLoginSuccsee\0\0"
    "on_loginBtn_clicked\0keyPressEvent\0"
    "QKeyEvent*\0event\0on_exitBtn_clicked\0"
    "on_exitBtn_2_clicked\0on_loginBtn_2_clicked"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_page_login[] = {

 // content:
      10,       // revision
       0,       // classname
       0,    0, // classinfo
       6,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       1,       // signalCount

 // signals: name, argc, parameters, tag, flags, initial metatype offsets
       1,    0,   50,    2, 0x06,    1 /* Public */,

 // slots: name, argc, parameters, tag, flags, initial metatype offsets
       3,    0,   51,    2, 0x08,    2 /* Private */,
       4,    1,   52,    2, 0x08,    3 /* Private */,
       7,    0,   55,    2, 0x08,    5 /* Private */,
       8,    0,   56,    2, 0x08,    6 /* Private */,
       9,    0,   57,    2, 0x08,    7 /* Private */,

 // signals: parameters
    QMetaType::Void,

 // slots: parameters
    QMetaType::Void,
    QMetaType::Void, 0x80000000 | 5,    6,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,

       0        // eod
};

void page_login::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        auto *_t = static_cast<page_login *>(_o);
        (void)_t;
        switch (_id) {
        case 0: _t->mSendLoginSuccsee(); break;
        case 1: _t->on_loginBtn_clicked(); break;
        case 2: _t->keyPressEvent((*reinterpret_cast< std::add_pointer_t<QKeyEvent*>>(_a[1]))); break;
        case 3: _t->on_exitBtn_clicked(); break;
        case 4: _t->on_exitBtn_2_clicked(); break;
        case 5: _t->on_loginBtn_2_clicked(); break;
        default: ;
        }
    } else if (_c == QMetaObject::IndexOfMethod) {
        int *result = reinterpret_cast<int *>(_a[0]);
        {
            using _t = void (page_login::*)();
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&page_login::mSendLoginSuccsee)) {
                *result = 0;
                return;
            }
        }
    }
}

const QMetaObject page_login::staticMetaObject = { {
    QMetaObject::SuperData::link<QWidget::staticMetaObject>(),
    qt_meta_stringdata_page_login.offsetsAndSize,
    qt_meta_data_page_login,
    qt_static_metacall,
    nullptr,
qt_incomplete_metaTypeArray<qt_meta_stringdata_page_login_t
, QtPrivate::TypeAndForceComplete<page_login, std::true_type>, QtPrivate::TypeAndForceComplete<void, std::false_type>
, QtPrivate::TypeAndForceComplete<void, std::false_type>, QtPrivate::TypeAndForceComplete<void, std::false_type>, QtPrivate::TypeAndForceComplete<QKeyEvent *, std::false_type>, QtPrivate::TypeAndForceComplete<void, std::false_type>, QtPrivate::TypeAndForceComplete<void, std::false_type>, QtPrivate::TypeAndForceComplete<void, std::false_type>


>,
    nullptr
} };


const QMetaObject *page_login::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *page_login::qt_metacast(const char *_clname)
{
    if (!_clname) return nullptr;
    if (!strcmp(_clname, qt_meta_stringdata_page_login.stringdata0))
        return static_cast<void*>(this);
    return QWidget::qt_metacast(_clname);
}

int page_login::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QWidget::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 6)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 6;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 6)
            *reinterpret_cast<QMetaType *>(_a[0]) = QMetaType();
        _id -= 6;
    }
    return _id;
}

// SIGNAL 0
void page_login::mSendLoginSuccsee()
{
    QMetaObject::activate(this, &staticMetaObject, 0, nullptr);
}
QT_WARNING_POP
QT_END_MOC_NAMESPACE
