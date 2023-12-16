import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.2


Page{
    id:root

    property alias backgroundColor:back_fon.color
    property alias buttonRightText:buttonRight.text
    property alias buttonLeftText:buttonLeft.text
    property alias buttonBackText:buttonBack.text

    signal buttonClickedLeft();
    signal buttonClickedRight();
    signal buttonClickedBack();

    background: Rectangle{
        id:back_fon
    }
    Button{
        id: buttonBack
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.margins: defMargin // look into main.qml
        onClicked: {
            root.buttonClickedBack()
        }
    }
    Button{
        id:buttonLeft
        anchors.left: parent.left
        anchors.bottom: parent.bottom
        anchors.margins: defMargin // look into main.qml
        onClicked: {
            root.buttonClickedLeft()
        }
    }
    Button{
        id:buttonRight
        anchors.right: parent.right
        anchors.bottom: parent.bottom
        anchors.margins: defMargin // look into main.qml
        onClicked: {
            root.buttonClickedRight()
        }
    }
}
