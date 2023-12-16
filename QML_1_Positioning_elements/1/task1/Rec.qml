import QtQuick 2.15

Item {
    property alias bcolor: rect.color
    Rectangle {
        id:rect
        border.color: "black"
        border.width: 1
        anchors.fill: parent
    }
}
