import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.2


Page{
    id:root

    property alias backgroundColor:back_fon.color

    property int burgerRowHeight: 7

    signal buttonBurgerOpen();

    background: Rectangle{
        id:back_fon

        width: parent.width
        height: 100

        anchors.top: parent.top
        anchors.right: parent.right
        anchors.left: parent.left


        Image{
            id: logo
            width: 70
            height: 70
            source: "images/other/logo.png"
            anchors.verticalCenter: parent.verticalCenter
            anchors.left: parent.left
            anchors.margins: defMargin
        }

        Rectangle{
            id:burgerclose
            color:"#000000"
            width: 70
            height: 50
            anchors.verticalCenter: parent.verticalCenter
            anchors.right: parent.right
            anchors.margins: defMargin
            Rectangle{
                id: top
                width: parent.width
                height: burgerRowHeight
                anchors.horizontalCenter: parent.horizontalCenter
                color: "#ffffff"
                radius: 10
            }
            Rectangle{
                width: parent.width
                height: burgerRowHeight
                anchors.verticalCenter: parent.verticalCenter
                anchors.horizontalCenter: parent.horizontalCenter
                color: "#ffffff"
                radius: 10
            }
            Rectangle{
                width: parent.width
                height: burgerRowHeight
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.bottom: parent.bottom
                color: "#ffffff"
                radius: 10
            }
            MouseArea {
                anchors.fill: parent
                cursorShape: Qt.PointingHandCursor
                onClicked: {
                    root.buttonBurgerOpen()
                }
            }
        }
    }
}
