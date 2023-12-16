import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.2


Window {
    width: 360
    height: 640
    visible: true
    title: qsTr("StackView")

    property int defMargin:10

    StackView{
        id: stack_view
        anchors.fill: parent
        initialItem: red
    }
    Comp{
        id:red
        backgroundColor: "red"
        buttonLeftText: "Green"
        buttonRightText: "Yellow"
        buttonBackText: "Back"

        onButtonClickedBack: {
            stack_view.pop()
        }
        onButtonClickedLeft:{
            stack_view.push(green)
        }
        onButtonClickedRight: {
            stack_view.push(yellow)
        }
     }
    Comp{
        id:yellow
        visible: false
        backgroundColor: "yellow"
        buttonLeftText: "Red"
        buttonRightText: "Green"
        buttonBackText: "Back"

        onButtonClickedBack:{
            stack_view.pop()
        }
        onButtonClickedLeft:{
            stack_view.push(red)
        }
       onButtonClickedRight: {
           stack_view.push(green)
        }
    }
    Comp{
        id:green
        visible: false
        backgroundColor: "green"
        buttonLeftText: "Yellow"
        buttonRightText: "Red"
        buttonBackText: "Back"

        onButtonClickedBack:{
            stack_view.pop()
        }
        onButtonClickedLeft:{
            stack_view.push(yellow)
        }
        onButtonClickedRight: {
            stack_view.push(red)
        }
    }
}
