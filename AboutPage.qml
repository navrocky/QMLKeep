import QtQuick 2.0
import Material 0.1
import QtWebView 1.0

Page {
    title: "About QML Keep"
    actionBar.backgroundColor: "#42a5f5"

//    Label {
//        anchors.centerIn: parent
//        text: "QML Keep"
//        style: "title"
//    }

    WebView {
        anchors.fill: parent
        url: "http://www.linux.org.ru/"
    }
}
