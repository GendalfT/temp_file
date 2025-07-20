QT       += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

CONFIG += c++17

# You can make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
    bladerf_rx.cpp \
    bladerf_tx.cpp \
    main.cpp \
    mainwindow.cpp

HEADERS += \
    bladerf_rx.h \
    bladerf_tx.h \
    mainwindow.h

FORMS += \
    mainwindow.ui

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

win32:CONFIG(release, debug|release): LIBS += -L'C:/Program Files/bladeRF/release/' -lbladeRF
else:win32:CONFIG(debug, debug|release): LIBS += -L'C:/Program Files/bladeRF/debug/' -lbladeRF
else:unix: LIBS += -L'C:/Program Files/bladeRF/' -lbladeRF

INCLUDEPATH += 'C:/Program Files/bladeRF/include'
DEPENDPATH += 'C:/Program Files/bladeRF/include'
