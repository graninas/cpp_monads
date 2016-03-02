win32:      CONFIG(release, debug|release):  LIBS += -L$$OUT_PWD/../../lib/cpp_monads/cpp_monads/release/ -lcpp_monads
else:win32: CONFIG(debug, debug|release):    LIBS += -L$$OUT_PWD/../../lib/cpp_monads/cpp_monads/debug/   -lcpp_monads
else:unix:                                   LIBS += -L$$OUT_PWD/../../lib/cpp_monads/cpp_monads/         -lcpp_monads

INCLUDEPATH += $$PWD/../../lib/cpp_monads/cpp_monads
DEPENDPATH  += $$PWD/../../lib/cpp_monads/cpp_monads

win32-g++:             CONFIG(release, debug|release): PRE_TARGETDEPS += $$OUT_PWD/../../lib/cpp_monads/cpp_monads/release/libcpp_monads.a
else:win32-g++:        CONFIG(debug, debug|release):   PRE_TARGETDEPS += $$OUT_PWD/../../lib/cpp_monads/cpp_monads/debug/libcpp_monads.a
else:win32:!win32-g++: CONFIG(release, debug|release): PRE_TARGETDEPS += $$OUT_PWD/../../lib/cpp_monads/cpp_monads/release/cpp_monads.lib
else:win32:!win32-g++: CONFIG(debug, debug|release):   PRE_TARGETDEPS += $$OUT_PWD/../../lib/cpp_monads/cpp_monads/debug/cpp_monads.lib
else:unix:                                             PRE_TARGETDEPS += $$OUT_PWD/../../lib/cpp_monads/cpp_monads/libcpp_monads.a

