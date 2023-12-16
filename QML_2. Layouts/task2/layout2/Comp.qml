import QtQuick 2.15
import QtQuick.Layouts 1.13

Rectangle {
    property alias yourtext: text.text
    width: 300
    height: 200

    Layout.fillHeight: true
    Layout.fillWidth: true

    Text{
        id: text
        anchors.centerIn: parent
    }
}
