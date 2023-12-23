import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Layouts 1.12

Window {
    width: 1000
    height: 200
    visible: true
    title: qsTr("Layouts")
    property int myMargin:1
    minimumWidth: parent
    RowLayout{
        id: cl
        spacing: myMargin
        anchors.fill:parent

        Comp{
            Layout.fillHeight: true
            Layout.alignment: Qt.AligtTop
            Layout.minimumWidth: parent.width/3
        }
        Comp{
            Layout.fillHeight: true
            Layout.alignment: Qt.AligtTop
            Layout.minimumWidth: parent.width/3
        }
        Comp{
            Layout.fillHeight: true
            Layout.alignment: Qt.AligtTop
            Layout.minimumWidth: parent.width/3
        }
    }
}
