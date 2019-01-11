#-------------------------------------------------
#
# Project created by QtCreator 2019-01-10T15:42:33
#
#-------------------------------------------------

QT       -= core gui

TARGET = FormulaRecLib
TEMPLATE = lib
CONFIG += staticlib

# The following define makes your compiler emit warnings if you use
# any feature of Qt which has been marked as deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if you use deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

INCLUDEPATH += J:/download/boost_1_65_0
INCLUDEPATH += J:/opensource/xerces-c-3.2.2/src
INCLUDEPATH += J:/opensource/xerces-c-3.2.2/build/src

CONFIG(debug, debug|release) {
    win32 {
        !contains(QMAKE_TARGET.arch, x86_64) {
            LIBS += J:/opensource/xerces-c-3.2.2/build/src/Debug/xerces-c_3D.lib #2013 32bit
        } else  {
            LIBS += J:/opensource/xerces-c-3.2.2/2017build/src/Debug/xerces-c_3D.lib #2017 64bit
        }
    }
    android {
        clang {

        } else {

        }
    }

    macx {

    }

    ios {

    }
}

CONFIG(release, debug|release) {
    win32 {
        !contains(QMAKE_TARGET.arch, x86_64) {
            LIBS += J:/opensource/xerces-c-3.2.2/build/src/Debug/xerces-c_3.lib #2013 32bit
        } else  {
            LIBS += J:/opensource/xerces-c-3.2.2/2017build/src/Debug/xerces-c_3.lib #2017 64bit
        }
    }
    android {
        clang {

        } else {

        }
    }

    macx {

    }

    ios {

    }
}

LIBS += -lAdvapi32
DEFINES += BOOST_ALL_NO_LIB

SOURCES += \
        formulareclib.cpp \
    cellcyk.cc \
    duration.cc \
    featureson.cc \
    gmm.cc \
    gparser.cc \
    grammar.cc \
    hypothesis.cc \
    logspace.cc \
    meparser.cc \
    online.cc \
    production.cc \
    sample.cc \
    segmentation.cc \
    sparel.cc \
    stroke.cc \
    symfeatures.cc \
    symrec.cc \
    tablecyk.cc \
    rnnlib4seshat/ClassificationLayer.cpp \
    rnnlib4seshat/DataExporter.cpp \
    rnnlib4seshat/Layer.cpp \
    rnnlib4seshat/Mdrnn.cpp \
    rnnlib4seshat/Optimiser.cpp \
    rnnlib4seshat/Random.cpp \
    rnnlib4seshat/WeightContainer.cpp

HEADERS += \
        formulareclib.h \
    cellcyk.h \
    duration.h \
    featureson.h \
    gmm.h \
    gparser.h \
    grammar.h \
    hypothesis.h \
    logspace.h \
    meparser.h \
    online.h \
    production.h \
    sample.h \
    segmentation.h \
    sparel.h \
    stroke.h \
    symfeatures.h \
    symrec.h \
    tablecyk.h \
    rnnlib4seshat/ActivationFunctions.hpp \
    rnnlib4seshat/BiasLayer.hpp \
    rnnlib4seshat/BlockLayer.hpp \
    rnnlib4seshat/ClassificationLayer.hpp \
    rnnlib4seshat/CollapseLayer.hpp \
    rnnlib4seshat/ConfigFile.hpp \
    rnnlib4seshat/Connection.hpp \
    rnnlib4seshat/Container.hpp \
    rnnlib4seshat/CopyConnection.hpp \
    rnnlib4seshat/DataExporter.hpp \
    rnnlib4seshat/DataSequence.hpp \
    rnnlib4seshat/FullConnection.hpp \
    rnnlib4seshat/GatherLayer.hpp \
    rnnlib4seshat/Helpers.hpp \
    rnnlib4seshat/IdentityLayer.hpp \
    rnnlib4seshat/InputLayer.hpp \
    rnnlib4seshat/Layer.hpp \
    rnnlib4seshat/Log.hpp \
    rnnlib4seshat/LstmLayer.hpp \
    rnnlib4seshat/Matrix.hpp \
    rnnlib4seshat/Mdrnn.hpp \
    rnnlib4seshat/MultiArray.hpp \
    rnnlib4seshat/MultilayerNet.hpp \
    rnnlib4seshat/Named.hpp \
    rnnlib4seshat/NetcdfDataset.hpp \
    rnnlib4seshat/NetworkOutput.hpp \
    rnnlib4seshat/NeuronLayer.hpp \
    rnnlib4seshat/Optimiser.hpp \
    rnnlib4seshat/Random.hpp \
    rnnlib4seshat/Rprop.hpp \
    rnnlib4seshat/SeqBuffer.hpp \
    rnnlib4seshat/SoftmaxLayer.hpp \
    rnnlib4seshat/SteepestDescent.hpp \
    rnnlib4seshat/String.hpp \
    rnnlib4seshat/StringAlignment.hpp \
    rnnlib4seshat/Trainer.hpp \
    rnnlib4seshat/TranscriptionLayer.hpp \
    rnnlib4seshat/WeightContainer.hpp
unix {
    target.path = /usr/lib
    INSTALLS += target
}
