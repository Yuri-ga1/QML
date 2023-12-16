import QtQuick 2.15

Item{
    Rectangle{
        id:rect1
        width: 300
        height: parent.height
        border.width: 1
        color:Qt.rgba(Math.random(),Math.random(),Math.random(),0.7)

        Text{
            text:"My color: "+rect1.color
            anchors.centerIn: rect1
            font.pixelSize: 24
        }
    }
}
