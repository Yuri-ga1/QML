import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.2


Page{
    id:root

    property alias backgroundColor:back_fon.color

    property int burgerRowHeight: 7

    signal buttonBurgerClose();
    signal buttonCharacters();
    signal buttonWeapons();

    background: Rectangle{
        id:back_fon

        width: parent.width
        height: 200

        anchors.top: parent.top
        anchors.right: parent.right
        anchors.left: parent.left


        Image{
            id: logo
            width: 70
            height: 70
            source: "images/other/logo.png"
            x: defMargin
            y:15
        }

        Rectangle{
            id:burgerclose
            color:"#000000"
            width: 70
            height: 50
            x: parent.width-(defMargin+width)
            y:25
            Rectangle{
                width: parent.width
                height: burgerRowHeight
                anchors.verticalCenter: parent.verticalCenter
                anchors.horizontalCenter: parent.horizontalCenter
                rotation: 45
                color: "#ffffff"
                radius: 10
            }
            Rectangle{
                width: parent.width
                height: burgerRowHeight
                anchors.verticalCenter: parent.verticalCenter
                anchors.horizontalCenter: parent.horizontalCenter
                rotation: -45
                color: "#ffffff"
                radius: 10
            }
            MouseArea {
                anchors.fill: parent
                cursorShape: Qt.PointingHandCursor
                onClicked: {
                    root.buttonBurgerClose()
                }
            }
        }

        RowLayout{
            width: parent.width
            x: 35
            y: parent.height - 70
            spacing: -50

            Text{
                id: characters
                font.pixelSize: 18
                text: "Characters"

                states: [
                        State {
                            name: "purpleColor"
                            PropertyChanges { target: characters; color: "purple" }
                        },
                        State {
                            name: "whiteColor"
                            PropertyChanges { target: characters; color: "white" }
                        }
                    ]

                MouseArea {
                    anchors.fill: parent
                    cursorShape: Qt.PointingHandCursor
                    onClicked: {
                        root.buttonCharacters()
                        if (characters.state === "whiteColor"){
                            characters.state = "purpleColor";
                            weapons.state = "whiteColor"
                        }
                    }
                }
                Component.onCompleted: characters.state = "purpleColor"
            }

            Text{
                id: weapons
                font.pixelSize: 18
                text: "Weapons"

                states: [
                        State {
                            name: "purpleColor"
                            PropertyChanges { target: weapons; color: "purple" }
                        },
                        State {
                            name: "whiteColor"
                            PropertyChanges { target: weapons; color: "white" }
                        }
                    ]

                MouseArea {
                    anchors.fill: parent
                    cursorShape: Qt.PointingHandCursor
                    onClicked: {
                        root.buttonCharacters()
                        if (weapons.state === "whiteColor"){
                            weapons.state = "purpleColor";
                            characters.state = "whiteColor"
                        }
                    }
                }
                Component.onCompleted: weapons.state = "whiteColor"
            }
            Image{
                id: find
                source: "images/other/find1.png"
            }
        }
    }
}
