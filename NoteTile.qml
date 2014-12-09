import QtQuick 2.0
import Material 0.1
Item {
    height: 20

    View {
        id: root
        anchors.fill: parent
        anchors.margins: 10
        elevation: 1

        Label {
            anchors.centerIn: parent
            text: qsTr("Memo1")
        }
    }

}
