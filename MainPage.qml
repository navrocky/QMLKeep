import QtQuick 2.0
import Material 0.1

Page {
    id: root
    title: "QML Keep"
    actionBar.backgroundColor: "green"

    Button {
        anchors.centerIn: parent
        elevation: 2
        text: qsTr("Create note")
        onTriggered: root.pageStack.push(Qt.resolvedUrl("AboutPage.qml"))
    }
}
