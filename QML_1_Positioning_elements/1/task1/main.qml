import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 640;
    height: 800;
    visible: true;
    title: qsTr("Steve")
    id:win
    Rectangle{
        id: body
        height: 300
        width: 200
        color: "#00BFFF"
        border.color: "black"
        border.width: 1
        anchors.centerIn: parent

        Rectangle{
            height: 75
            width: parent.width
            color:"DarkBlue"
            anchors.bottom: parent.bottom

            Rectangle{
                height: 15
                width: parent.width
                color:"black"
                anchors.top: parent.top
            }
        }
    }

    Rectangle{
        height: 100
        width: 100
        color: "PeachPuff"
        border.color: "black"
        border.width: 1
        anchors.bottom: body.top
        anchors.horizontalCenter: body.horizontalCenter

        Rectangle{
          id: lefteye
          height: 10
          width:30
          color:"white"
          border.color: "black"
          border.width: 1
          anchors.top: parent.top
          anchors.left: parent.left
          anchors.topMargin: 30
          anchors.leftMargin: 10

          Rectangle{
            height: 10
            width:15
            color:"blue"
            anchors.horizontalCenter: parent.horizontalCenter
            border.color: "black"
            border.width: 1
          }
        }

        Rectangle{
          id: righteye
          height: 10
          width:30
          color: "white"
          border.color: "black"
          border.width: 1
          anchors.top: parent.top
          anchors.right: parent.right
          anchors.topMargin: 30
          anchors.rightMargin: 10

          Rectangle{
            height: 10
            width:15
            color:"blue"
            anchors.horizontalCenter: parent.horizontalCenter
            border.color: "black"
            border.width: 1
          }
        }

        Rectangle{
            id: month
            height: 10
            width: 50
            color: "red"
            border.color: "black"
            border.width: 1
            anchors.bottom: parent.bottom
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.bottomMargin: 10
        }
    }

    Rectangle{
        id: righthand
        height: 300
        width: 60
        color: "PeachPuff"
        border.color: "black"
        border.width: 1
        anchors.left: body.right
        anchors.top: body.top

        Rectangle{
            height: 60
            width: parent.width
            color: "#00BFFF"
            border.color: "black"
            border.width: 1
            anchors.top: parent.top
        }
    }

    Rectangle{
        id: lefthand
        height: 300
        width: 60
        color: "PeachPuff"
        border.color: "black"
        border.width: 1
        anchors.right: body.left
        anchors.top: body.top

        Rectangle{
            height: 60
            width: parent.width
            color: "#00BFFF"
            border.color: "black"
            border.width: 1
            anchors.top: parent.top
        }
    }

    Rectangle{
        id: leftleg
        height: 300
        width: 75
        color:"DarkBlue"
        border.color: "black"
        border.width: 1
        anchors.left: lefthand.right
        anchors.top: body.bottom
    }

    Rectangle{
        id: rightleg
        height: 300
        width: 75
        color:"DarkBlue"
        border.color: "black"
        border.width: 1
        anchors.right: righthand.left
        anchors.top: body.bottom
    }


}
