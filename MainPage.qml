import QtQuick 2.0
import Material 0.1

Page {
    id: root
    title: "QML Keep"
    actionBar.backgroundColor: "#ffee58"

    property int scrollPosition: flickable.contentY

    actions: [
        Action {
                name: "MyAction"
                iconName: "action/help"
                onTriggered: pageStack.push(Qt.resolvedUrl("AboutPage.qml"))
            }
    ]

    Flickable {
        anchors.fill: parent
        id: flickable
        contentHeight: grid.implicitHeight

        property int spacing: units.dp(10)
        onSpacingChanged: console.log("spacing: " + spacing)
        property int preferredTileWidth: units.dp(400)
        property int columnCount: Math.max(1, (flickable.width - spacing) / (preferredTileWidth + spacing))
        onColumnCountChanged: console.log(columnCount)

        property int realTileWidth: columnCount == 1 ? width - spacing  : preferredTileWidth
        maximumFlickVelocity: 1000000
//        flickDeceleration: 0.1
        boundsBehavior: Flickable.DragOverBounds

        Grid {
            id: grid
            columns: flickable.columnCount
            spacing: flickable.spacing
            width: implicitWidth
            anchors.horizontalCenter: parent.horizontalCenter

            move: Transition {
                NumberAnimation { properties: "x,y"; duration: 500; easing.type: Easing.OutQuad }
            }

            Repeater {
                model: 20
                delegate: NoteTile{
                    width: flickable.realTileWidth
                    height: units.dp(200)
                }
            }
        }
    }

    Scrollbar {
        flickableItem: flickable
    }
}
