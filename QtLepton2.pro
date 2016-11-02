#-------------------------------------------------
#
# Project created by QtCreator 2016-10-12T16:12:11
#
#-------------------------------------------------

QT       += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = QtLepton2
TEMPLATE = app

RPI_LIBS = ../raspberrypi_libs
LEPTONSDK = leptonSDKEmb32PUB

PRE_TARGETDEPS += sdk
QMAKE_EXTRA_TARGETS += sdk sdkclean
sdk.commands = make -C $${RPI_LIBS}/$${LEPTONSDK}
sdkclean.commands = make -C $${RPI_LIBS}/$${LEPTONSDK} clean

DEPENDPATH += .
INCLUDEPATH += . $${RPI_LIBS}
INCLUDEPATH += 'pkg-config --libs opencv'

SOURCES += main.cpp\
        mainwindow.cpp \
    MyLabel.cpp \
    Lepton_I2C.cpp \
    LeptonThread.cpp \
    Palettes.cpp \
    SPI.cpp \
    Processing.cpp\

HEADERS  += mainwindow.h \
    MyLabel.h \
    Lepton_I2C.h \
    LeptonThread.h \
    Palettes.h \
    SPI.h \
    Processing.h\

FORMS    += mainwindow.ui

unix:LIBS += -L$${RPI_LIBS}/$${LEPTONSDK}/Debug -lLEPTON_SDK


INCLUDEPATH += `pkg-config --cflags opencv`
LIBS += `pkg-config --libs opencv`
