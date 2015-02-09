#-------------------------------------------------
#
# Project created by QtCreator 2015-02-04T10:19:48
#
#-------------------------------------------------

QT       += core

QT       -= gui

TARGET = http
CONFIG   += console
CONFIG   -= app_bundle

TEMPLATE = app

QMAKE_CXXFLAGS += -std=c++11
#or -std=gnu++11

SOURCES += main.cpp


INCLUDEPATH += $$PWD/ext
DEPENDPATH += $$PWD/ext

win32:CONFIG(release, debug|release):LIBS += -lws2_32
else:win32:CONFIG(debug, debug|release): LIBS += -lws2_32

win32:CONFIG(release, debug|release): LIBS += -L$$PWD/ext/lib/ -lboost_system-mgw48-mt-1_57
else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/ext/lib/ -lboost_system-mgw48-mt-d-1_57

win32-g++:CONFIG(release, debug|release): PRE_TARGETDEPS += $$PWD/ext/lib/libboost_system-mgw48-mt-1_57.a
else:win32-g++:CONFIG(debug, debug|release): PRE_TARGETDEPS += $$PWD/ext/lib/libboost_system-mgw48-mt-d-1_57.a
else:win32:!win32-g++:CONFIG(release, debug|release): PRE_TARGETDEPS += $$PWD/ext/lib/boost_system-mgw48-mt-1_57.lib
else:win32:!win32-g++:CONFIG(debug, debug|release): PRE_TARGETDEPS += $$PWD/ext/lib/boost_system-mgw48-mt-d-1_57.lib

win32:CONFIG(release, debug|release): LIBS += -L$$PWD/ext/lib/ -lboost_log_setup-mgw48-mt-1_57
else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/ext/lib/ -lboost_log_setup-mgw48-mt-d-1_57

win32-g++:CONFIG(release, debug|release): PRE_TARGETDEPS += $$PWD/ext/lib/libboost_log_setup-mgw48-mt-1_57.a
else:win32-g++:CONFIG(debug, debug|release): PRE_TARGETDEPS += $$PWD/ext/lib/libboost_log_setup-mgw48-mt-d-1_57.a
else:win32:!win32-g++:CONFIG(release, debug|release): PRE_TARGETDEPS += $$PWD/ext/lib/boost_log_setup-mgw48-mt-1_57.lib
else:win32:!win32-g++:CONFIG(debug, debug|release): PRE_TARGETDEPS += $$PWD/ext/lib/boost_log_setup-mgw48-mt-d-1_57.lib

win32:CONFIG(release, debug|release): LIBS += -L$$PWD/ext/lib/ -lboost_log-mgw48-mt-1_57
else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/ext/lib/ -lboost_log-mgw48-mt-d-1_57

win32-g++:CONFIG(release, debug|release): PRE_TARGETDEPS += $$PWD/ext/lib/libboost_log-mgw48-mt-1_57.a
else:win32-g++:CONFIG(debug, debug|release): PRE_TARGETDEPS += $$PWD/ext/lib/libboost_log-mgw48-mt-d-1_57.a
else:win32:!win32-g++:CONFIG(release, debug|release): PRE_TARGETDEPS += $$PWD/ext/lib/boost_log-mgw48-mt-1_57.lib
else:win32:!win32-g++:CONFIG(debug, debug|release): PRE_TARGETDEPS += $$PWD/ext/lib/boost_log-mgw48-mt-d-1_57.lib

win32:CONFIG(release, debug|release): LIBS += -L$$PWD/ext/lib/ -lboost_date_time-mgw48-mt-1_57
else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/ext/lib/ -lboost_date_time-mgw48-mt-d-1_57

win32-g++:CONFIG(release, debug|release): PRE_TARGETDEPS += $$PWD/ext/lib/libboost_date_time-mgw48-mt-1_57.a
else:win32-g++:CONFIG(debug, debug|release): PRE_TARGETDEPS += $$PWD/ext/lib/libboost_date_time-mgw48-mt-d-1_57.a
else:win32:!win32-g++:CONFIG(release, debug|release): PRE_TARGETDEPS += $$PWD/ext/lib/boost_date_time-mgw48-mt-1_57.lib
else:win32:!win32-g++:CONFIG(debug, debug|release): PRE_TARGETDEPS += $$PWD/ext/lib/boost_date_time-mgw48-mt-d-1_57.lib


win32:CONFIG(release, debug|release): LIBS += -L$$PWD/ext/lib/ -lboost_thread-mgw48-mt-1_57
else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/ext/lib/ -lboost_thread-mgw48-mt-d-1_57

win32-g++:CONFIG(release, debug|release): PRE_TARGETDEPS += $$PWD/ext/lib/libboost_thread-mgw48-mt-1_57.a
else:win32-g++:CONFIG(debug, debug|release): PRE_TARGETDEPS += $$PWD/ext/lib/libboost_thread-mgw48-mt-d-1_57.a
else:win32:!win32-g++:CONFIG(release, debug|release): PRE_TARGETDEPS += $$PWD/ext/lib/boost_thread-mgw48-mt-1_57.lib
else:win32:!win32-g++:CONFIG(debug, debug|release): PRE_TARGETDEPS += $$PWD/ext/lib/boost_thread-mgw48-mt-d-1_57.lib



win32:CONFIG(release, debug|release): LIBS += -L$$PWD/ext/lib/ -lboost_filesystem-mgw48-mt-1_57
else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/ext/lib/ -lboost_filesystem-mgw48-mt-d-1_57


win32-g++:CONFIG(release, debug|release): PRE_TARGETDEPS += $$PWD/ext/lib/libboost_filesystem-mgw48-mt-1_57.a
else:win32-g++:CONFIG(debug, debug|release): PRE_TARGETDEPS += $$PWD/ext/lib/libboost_filesystem-mgw48-mt-d-1_57.a
else:win32:!win32-g++:CONFIG(release, debug|release): PRE_TARGETDEPS += $$PWD/ext/lib/boost_filesystem-mgw48-mt-1_57.lib
else:win32:!win32-g++:CONFIG(debug, debug|release): PRE_TARGETDEPS += $$PWD/ext/lib/boost_filesystem-mgw48-mt-d-1_57.lib

HEADERS += \
    Active.h \
    tsqueue.h \
    log.h
