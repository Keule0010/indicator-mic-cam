QT       += core gui
greaterThan(QT_MAJOR_VERSION, 4): QT += widgets
CONFIG += c++11

# You can make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
    src/main.cpp \
    src/pulseaudio.cpp \
    src/traymanager.cpp \
    src/webcamera.cpp

HEADERS += \
    src/device.h \
    src/pulseaudio.h \
    src/traymanager.h \
    src/unused.h \
    src/webcamera.h

unix {
    target.path = /usr/local/bin/
    INSTALLS += target

    CONFIG += link_pkgconfig
    PKGCONFIG += libpulse
}

DISTFILES += \
    README.rst
