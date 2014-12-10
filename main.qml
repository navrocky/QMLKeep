import QtQuick 2.0
import Material 0.1

ApplicationWindow {
    title: qsTr("QML Keep")
    visible: true
    initialPage: MainPage {
        id: mainPage
    }
    toolbar.elevation: Math.max(0, Math.min(mainPage.scrollPosition * 0.1, 2))
}
