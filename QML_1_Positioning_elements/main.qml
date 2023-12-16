import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Title")

    Rectangle{
        anchors.fill: parent

        Rectangle{
           id: header
           anchors.top: parent.top
           width: parent.width
           height: parent.height/10
           color:"gray"
           Text{
               text: "Header"
               font.pixelSize: 16
               color: "black"
               wrapMode: Text.WordWrap
               horizontalAlignment: Text.AlignHCenter
               verticalAlignment: Text.AlignVCenter
               anchors.centerIn: parent
           }
        }
        Rectangle{
            id: content
            width: parent.width
            height: parent.height/10*8
            anchors.top: header.bottom
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.bottom: footer.top
            border.width: 1
            border.color: "black"
            anchors.margins: 5
            Text{
                text: "Content"
                font.pixelSize: 16
                color: "black"
                wrapMode: Text.WordWrap
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                anchors.centerIn: parent
            }
        }
        Rectangle{
           id: footer
           anchors.bottom: parent.bottom
           width: parent.width
           height: parent.height/10
           Rectangle{
               id: leftbtn
               width: parent.width / 3 - 3
               height: parent.height
               anchors.left: parent.left
               anchors.top: parent.top
               anchors.bottom: parent.bottom
               color: 'gray'
               Text{
                   text: "1"
                   font.pixelSize: 16
                   color: "black"
                   wrapMode: Text.WordWrap
                   horizontalAlignment: Text.AlignHCenter
                   verticalAlignment: Text.AlignVCenter
                   anchors.centerIn: parent
               }
           }
           Rectangle{
               id:midbtn
               width: parent.width / 3 - 3
               height: parent.height
               anchors.left: leftbtn.right
               anchors.right: rightbtn.left
               anchors.top: parent.top
               anchors.bottom: parent.bottom
               anchors.leftMargin: 5
               anchors.rightMargin: 5
               color: 'gray'
               anchors.centerIn: parent
               Text{
                   text: "2"
                   font.pixelSize: 16
                   color: "black"
                   wrapMode: Text.WordWrap
                   horizontalAlignment: Text.AlignHCenter
                   verticalAlignment: Text.AlignVCenter
                   anchors.centerIn: parent
               }
           }
           Rectangle{
               id: rightbtn
               width: parent.width / 3 - 3
               height: parent.height
               anchors.right: parent.right
               anchors.top: parent.top
               anchors.bottom: parent.bottom
               color: 'gray'
               Text{
                   text: "3"
                   font.pixelSize: 16
                   color: "black"
                   wrapMode: Text.WordWrap
                   horizontalAlignment: Text.AlignHCenter
                   verticalAlignment: Text.AlignVCenter
                   anchors.centerIn: parent
               }
           }
        }
    }
}
