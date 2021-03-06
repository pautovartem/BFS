#-------------------------------------------------
#
# Project created by QtCreator 2017-01-29T15:15:01
#
#-------------------------------------------------

QT       += core gui qml quickwidgets

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = graf
TEMPLATE = app

# The following define makes your compiler emit warnings if you use
# any feature of Qt which as been marked as deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if you use deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0


SOURCES += main.cpp\
    GrafScene.cpp \
    GrafAlgorithm.cpp \
    mainwindow.cpp

HEADERS  += \
    GrafScene.h \
    GrafAlgorithm.h \
    mainwindow.h

FORMS    += \
    mainwindow.ui

RESOURCES += \
    js.qrc \
    qml.qrc \
    images.qrc \
    icons.qrc

RC_ICONS = icons/graph.ico

CONFIG(release, debug|release): DESTDIR = $$OUT_PWD/release
CONFIG(debug, debug|release): DESTDIR = $$OUT_PWD/debug

help_to_build.path = $$DESTDIR/help
help_to_build.files = help/*

INSTALLS += \
    help_to_build
