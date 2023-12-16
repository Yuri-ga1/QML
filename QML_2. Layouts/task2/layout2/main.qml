import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Layouts 1.13

Window {
    width: 480
    height: 640
    visible: true
    title: qsTr("Layouts")

    property int myMarginRow:10
    property int myMarginColumn:5

    ColumnLayout{
        anchors.fill:parent
        spacing: myMarginRow
        Comp{
            yourtext: "Header"
            color: "grey"
            Layout.minimumHeight: parent.height/9
            Layout.minimumWidth: parent.width
        }
        Comp{
            yourtext: "Content"
            border.width: 1
            border.color: "grey"
            Layout.minimumHeight: (parent.height/9)*7-2*myMarginRow
            Layout.minimumWidth: parent.width-2*myMarginRow
            Layout.alignment: Qt.AlignLeft
            Layout.leftMargin: myMarginRow
            Layout.rightMargin: myMarginRow

        }
        RowLayout{
            spacing: myMarginColumn
            Layout.minimumHeight: parent.height/9
            Comp{
                yourtext: "1"
                color: "grey"
                Layout.minimumWidth: parent.width/3
            }
            Comp{
                yourtext: "2"
                color: "grey"
                Layout.minimumWidth: parent.width/3-2*myMarginColumn
            }
            Comp{
                yourtext: "3"
                color: "grey"
                Layout.minimumWidth: parent.width/3
            }
        }
    }

}
