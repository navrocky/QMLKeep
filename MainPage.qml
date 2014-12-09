import QtQuick 2.0
import Material 0.1

Page {
    id: root
    title: "QML Keep"
    actionBar.backgroundColor: Qt.lighter("yellow")

    actions: [
        Action {
                name: "MyAction"
                iconName: "action/help"
            }
    ]

    ListView {
        id: listView
        anchors.fill: parent
        model: 30
        delegate: NoteTile{
            width: listView.width
            height: 100

        }
    }

    Scrollbar {
        flickableItem: listView
    }




//    Button {
//        anchors.centerIn: parent
//        elevation: 2
//        text: qsTr("Create note")
//        onTriggered: root.pageStack.push(Qt.resolvedUrl("AboutPage.qml"))
//    }
}
