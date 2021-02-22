import QtQuick 2.2
import QtQuick.Window 2.1
import QtQuick.Controls 2.3
import QtQuick.Extras 1.4
import QtQuick.Layouts 1.15


ToolBar {
    id: toolBar
    width: parent.width
    height: AppTheme.iconToolbarHeight

    RowLayout {
        id: row
        anchors.fill: parent
        ToolButton {
            id: nextButton
            width: AppTheme.iconButtonWidth
            height:AppTheme.iconButtonHeight
            icon.source:"images/arrow-circle-right-outline.svg"
            onClicked:app.getNext()
        }

        ToolButton {
            id: prevButton
            width: AppTheme.iconButtonWidth
            height:AppTheme.iconButtonHeight
            icon.source: "/images/arrow-circle-left-outline.svg"
            onClicked: app.getPrevious()
        }

        ToolButton {
            id: setupButton
            width: AppTheme.iconButtonWidth
            height:AppTheme.iconButtonHeight
            icon.source: "/images/gears.svg"
        }

        ToolButton {
            id: terminalButton
            width: AppTheme.iconButtonWidth
            height:AppTheme.iconButtonHeight
            icon.source: "/images/terminal.svg"
            onClicked: app.terminal()
        }

        ToolButton {
            id: rebootButton
            width: AppTheme.iconButtonWidth
            height:AppTheme.iconButtonHeight
            icon.source: "/images/reboot.svg"
            onClicked: app.reboot()
        }

        ToolButton {
            id: shutdownButton
            width: AppTheme.iconButtonWidth
            height:AppTheme.iconButtonHeight
            icon.source: "/images/ui-power.svg"
            onClicked: app.powerOff()
        }

        TextField {
            id:customUrl
            placeholderText: qsTr("Enter url")
            onEditingFinished: clockwebengine.url="https://www."+customUrl.text
        }
    }
}

