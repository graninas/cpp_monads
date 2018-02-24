#-------------------------------------------------
#
# Project created by QtCreator 2014-12-18T21:26:49
#
#-------------------------------------------------

QT -= core gui

TARGET = cpp_monads
TEMPLATE = lib
CONFIG += staticlib

CONFIG += c++1z
QMAKE_CXXFLAGS += -nostdinc++

INCLUDEPATH += /usr/include/x86_64-linux-gnu/c++/7
INCLUDEPATH += /usr/include/c++/7

SOURCES +=

HEADERS += \
    functionalutils.h \
    maybemonad.h \
    monads.h \
    maybeactionstack.h

unix {
    target.path = /usr/lib
    INSTALLS += target
}

#win32:CONFIG(release, debug|release): LIBS += -L$$OUT_PWD/../../cpp_functional_core/release/ -lcpp_functional_core
#else:win32:CONFIG(debug, debug|release): LIBS += -L$$OUT_PWD/../../cpp_functional_core/debug/ -lcpp_functional_core
#else:unix: LIBS += -L$$OUT_PWD/../../cpp_functional_core/ -lcpp_functional_core

#INCLUDEPATH += $$PWD/../../cpp_functional_core
#DEPENDPATH += $$PWD/../../cpp_functional_core

#win32-g++:CONFIG(release, debug|release): PRE_TARGETDEPS += $$OUT_PWD/../../cpp_functional_core/release/libcpp_functional_core.a
#else:win32-g++:CONFIG(debug, debug|release): PRE_TARGETDEPS += $$OUT_PWD/../../cpp_functional_core/debug/libcpp_functional_core.a
#else:win32:!win32-g++:CONFIG(release, debug|release): PRE_TARGETDEPS += $$OUT_PWD/../../cpp_functional_core/release/cpp_functional_core.lib
#else:win32:!win32-g++:CONFIG(debug, debug|release): PRE_TARGETDEPS += $$OUT_PWD/../../cpp_functional_core/debug/cpp_functional_core.lib
#else:unix: PRE_TARGETDEPS += $$OUT_PWD/../../cpp_functional_core/libcpp_functional_core.a
