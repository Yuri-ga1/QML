import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.2


Window {
    width: 393
    height: 700
    visible: true
    title: qsTr("My Project")

    property int defMargin: 20

    Rectangle{
        anchors.fill: parent
        gradient: Gradient {
            GradientStop { position: 0.0; color: "purple" }
            GradientStop { position: 0.3; color: "purple" }
            GradientStop { position: 0.8; color: "#FFA07A" }
            GradientStop { position: 1.0; color: "yellow" }
            orientation: Gradient.Vertical
        }

        StackView{
            id: stack_view
            width: parent.width
            anchors.top: parent.top
            initialItem: headerclose
        }
        HeaderClose{
            id:headerclose
            backgroundColor: "#000000"
            onButtonBurgerOpen:{
                stack_view.replace(headerclose, headeropen)
            }
        }
        HeaderOpen{
            id: headeropen
            backgroundColor: "#000000"
            visible: false
            onButtonBurgerClose: {
                stack_view.replace(headeropen, headerclose)
            }
            onButtonCharacters: {}
            onButtonWeapons: {}
        }

    }
}
