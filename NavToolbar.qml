import QtQuick 2.2
import QtQuick.Window 2.1
import QtQuick.Controls 2.3
import QtQuick.Extras 1.4
import QtQuick.Controls 1.4

Rectangle {
    width:50
    height:50
    radius: 2
    color: "red"

    x:10
    y:400
    MouseArea {
        id: touchArea
        y: 0
        width: 50
        height: 50
        anchors.fill: parent
        onClicked: pieMenu.popup(touchArea.mouseX, touchArea.mouseY)
    }

    PieMenu {
        id: pieMenu
        triggerMode: TriggerMode.TriggerOnClick
        x: 0
        y: 0
        width: 150
        height: 150

        MenuItem {
            text: "Alarm"
            onTriggered: {
                bgImage.source = iconSource
                bgLabel.text = text + " selected"
            }
            iconSource: "qrc:/images/alarm.svg"
        }

        MenuItem {
            text: "Themes"
            onTriggered: {
                bgImage.source = iconSource
                bgLabel.text = text + " selected"
            }
            iconSource: "qrc:/images/ui-theme.svg"
        }

        MenuItem {
            text: "Reboot"
            onTriggered: {
                bgImage.source = iconSource
                bgLabel.text = text + " selected"
            }
            iconSource: "qrc:/images/btn_reboot.png"
        }

        MenuItem {
            text: "Power Off"
            onTriggered: {
                bgImage.source = iconSource
                bgLabel.text = text + " selected"
            }
            iconSource: "qrc:/images/ui-power.svg"
        }
    }
}

/*
Item {
    width: 800
    height: 56

    ToolBar {
        id: toolBar
        x: 0
        y: 0
        width: 800
        height: 56

        NavButton {
            id: nextButton
            x: 11
            y: 0
            imageSource: "images/arrow-circle-right-outline.svg"
            onClicked:app.getNext()
        }

        NavButton {
            id: prevButton
            x: 78
            y: 0
            imageSource: "/images/arrow-circle-left-outline.svg"
            onClicked: app.getPrevious()
        }

        NavButton {
            id: alarmButton
            x: 145
            y: 0
            imageSource: "/images/alarm.svg"
            onClicked: app.getPrevious()
        }

        NavButton {
            id: themeButton
            x: 212
            y: 0
            imageSource: "/images/ui-theme.svg"
            onClicked: app.getPrevious()
        }

        NavButton {
            id: rebootButton
            x: 279
            y: 0
            imageSource: "images/btn_reboot.png"
            onClicked: app.getPrevious()
        }

        NavButton {
            id: shutdownButton
            x: 346
            y: 0
            imageSource: "/images/ui-power.svg"
            onClicked: app.getPrevious()
        }

        NavButton {
            id: aboutButton
            x: 413
            y: 0
            imageSource: "images/btn_about.png"
            onClicked: app.getPrevious()
        }

        RoundButton {
            id: roundButton
            x: 727
            y: 8
            text: "ea81"
            font.family: "IcoFont"
            display: AbstractButton.TextOnly
        }
    }
}
*/
