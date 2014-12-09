TEMPLATE = app

QT += qml quick widgets

SOURCES += main.cpp

RESOURCES += qml.qrc \
    material.qrc \
    material-extra.qrc

# Additional import path used to resolve QML modules in Qt Creator's code model
QML_IMPORT_PATH = qml-material/modules qml-extras/modules

# Default rules for deployment.
include(deployment.pri)
