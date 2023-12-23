import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Layouts 1.13

Window {
    width: 480
    height: 640
    visible: true
    title: qsTr("Task for Signal")

    property int myMarginRow:10
    property int myMarginColumn:5

    ColumnLayout{
        anchors.fill:parent
        spacing: myMarginRow
        Comp{
            id: header
            yourtext: "Header"
            color: "grey"
            Layout.minimumHeight: parent.height/9
            Layout.minimumWidth: parent.width
        }
        Comp{
            id: context
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
            Layout.minimumWidth: parent.width
            Layout.minimumHeight: parent.height/9
            Comp{
                id: btn1
                yourtext: "1"
                color: "grey"
                Layout.minimumWidth: parent.width/3
                MouseArea {
                    anchors.fill: parent
                    onClicked: {
                        header.yourtext = "Header 1";
                        context.yourtext = "Item 1 content";
                        btn1.opacity = 1;
                        btn2.opacity = 0.5;
                        btn3.opacity = 0.5;
                    }
                }
            }
            Comp{
                id: btn2
                yourtext: "2"
                color: "grey"
                Layout.minimumWidth: parent.width/3-2*myMarginColumn
                MouseArea {
                    anchors.fill: parent
                    onClicked: {
                        header.yourtext = "Header 2";
                        context.yourtext = "Item 2 content";
                        btn1.opacity = 0.5;
                        btn2.opacity = 1;
                        btn3.opacity = 0.5;
                    }
                }
            }
            Comp{
                id: btn3
                yourtext: "3"
                color: "grey"
                Layout.minimumWidth: parent.width/3
                MouseArea {
                    anchors.fill: parent
                    onClicked: {
                        header.yourtext = "Header 3";
                        context.yourtext = "Item 3 content";
                        btn1.opacity = 0.5;
                        btn2.opacity = 0.5;
                        btn3.opacity = 1;
                    }
                }
            }
        }
    }

}
