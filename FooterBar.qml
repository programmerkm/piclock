import QtQuick 2.2
import QtQuick.Window 2.1
import QtQuick.Controls 2.3
import QtQuick.Extras 1.4
import QtQuick.Layouts 1.15

Item {
    width: 800
    height: 38

    ToolBar {
        id: toolBar
        x: 0
        y: 0
        width: 800
        height: 38

        RowLayout {
            id: row
            anchors.fill: parent
            ToolButton {
                id: nextButton
                width: 32
                height:32
                icon.source:"images/arrow-circle-right-outline.svg"
                onClicked:app.getNext()
            }

            ToolButton {
                id: prevButton
                width: 32
                height:32
                icon.source: "/images/arrow-circle-left-outline.svg"
                onClicked: app.getPrevious()
            }

            ToolButton {
                id: setupButton
                width: 32
                height:32
                icon.source: "/images/gears.svg"
            }

            ToolButton {
                id: alarmButton
                width: 32
                height:32
                icon.source: "/images/alarm.svg"
                enabled: false
            }

            ToolButton {
                id: themeButton
                width: 32
                height:32
                icon.source: "/images/ui-theme.svg"
                enabled: false
            }

            ToolButton {
                id: rebootButton
                width: 32
                height:32
                icon.source: "images/btn_reboot.png"
                onClicked: app.reboot()
            }

            ToolButton {
                id: shutdownButton
                width: 32
                height:32
                icon.source: "/images/ui-power.svg"
                onClicked: app.powerOff()
            }
        }
    }
}
