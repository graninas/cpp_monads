#-------------------------------------------------
#
# Project created by QtCreator 2015-08-31T00:54:06
#
#-------------------------------------------------

QT       += testlib

QT       -= gui

TARGET = tst_monadtest
CONFIG   += console
CONFIG   -= app_bundle

CONFIG += c++1z
QMAKE_CXXFLAGS += -nostdinc++

INCLUDEPATH += /usr/include/x86_64-linux-gnu/c++/7
INCLUDEPATH += /usr/include/c++/7

TEMPLATE = app


SOURCES += tst_monadtest.cpp
DEFINES += SRCDIR=\\\"$$PWD/\\\"

# functional core targets
win32:     CONFIG(release, debug|release):    LIBS += -L$$OUT_PWD/../../cpp_functional_core/cpp_functional_core/release/ -lcpp_functional_core
else:win32:CONFIG(debug, debug|release):      LIBS += -L$$OUT_PWD/../../cpp_functional_core/cpp_functional_core/debug/   -lcpp_functional_core
else:unix:                                    LIBS += -L$$OUT_PWD/../../cpp_functional_core/cpp_functional_core/         -lcpp_functional_core

INCLUDEPATH += $$PWD/../../cpp_functional_core/cpp_functional_core
DEPENDPATH  += $$PWD/../../cpp_functional_core/cpp_functional_core

win32-g++:             CONFIG(release, debug|release): PRE_TARGETDEPS += $$OUT_PWD/../../cpp_functional_core/cpp_functional_core/release/libcpp_functional_core.a
else:win32-g++:        CONFIG(debug, debug|release):   PRE_TARGETDEPS += $$OUT_PWD/../../cpp_functional_core/cpp_functional_core/debug/libcpp_functional_core.a
else:win32:!win32-g++: CONFIG(release, debug|release): PRE_TARGETDEPS += $$OUT_PWD/../../cpp_functional_core/cpp_functional_core/release/cpp_functional_core.lib
else:win32:!win32-g++: CONFIG(debug, debug|release):   PRE_TARGETDEPS += $$OUT_PWD/../../cpp_functional_core/cpp_functional_core/debug/cpp_functional_core.lib
else:unix:                                             PRE_TARGETDEPS += $$OUT_PWD/../../cpp_functional_core/cpp_functional_core/libcpp_functional_core.a


# monads targets
win32:      CONFIG(release, debug|release): LIBS += -L$$OUT_PWD/../cpp_monads/release/ -lcpp_monads
else:win32: CONFIG(debug, debug|release):   LIBS += -L$$OUT_PWD/../cpp_monads/debug/ -lcpp_monads
else:unix:                                  LIBS += -L$$OUT_PWD/../cpp_monads/ -lcpp_monads

INCLUDEPATH += $$PWD/../cpp_monads
DEPENDPATH  += $$PWD/../cpp_monads

win32-g++:             CONFIG(release, debug|release): PRE_TARGETDEPS += $$OUT_PWD/../cpp_monads/release/libcpp_monads.a
else:win32-g++:        CONFIG(debug, debug|release):   PRE_TARGETDEPS += $$OUT_PWD/../cpp_monads/debug/libcpp_monads.a
else:win32:!win32-g++: CONFIG(release, debug|release): PRE_TARGETDEPS += $$OUT_PWD/../cpp_monads/release/cpp_monads.lib
else:win32:!win32-g++: CONFIG(debug, debug|release):   PRE_TARGETDEPS += $$OUT_PWD/../cpp_monads/debug/cpp_monads.lib
else:unix:                                             PRE_TARGETDEPS += $$OUT_PWD/../cpp_monads/libcpp_monads.a
