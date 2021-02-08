TEMPLATE = app
TARGET = picklock

QT += quick webengine quickcontrols2
CONFIG += c++11

SOURCES += main.cpp \
    qlocaldevice.cpp
 \
    qlocaldevice.cpp

RESOURCES += qml.qrc

target.path = $$[QT_INSTALL_EXAMPLES]/webengine/minimal
INSTALLS += target

HEADERS += \
    qlocaldevice.h
