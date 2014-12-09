import QtQuick 2.4
import QtQuick.Window 2.2
import Material 0.1 as Material

Window {
    title: qsTr("QML Keep")
    width: 640
    height: 480
    visible: true
    color: Material.Theme.backgroundColor

    Material.Button {
        anchors.centerIn: parent
        elevation: 2
        text: qsTr("Create note")
    }

    Flickable {

    }
}
