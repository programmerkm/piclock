import QtQuick 2.2
import QtQuick.Window 2.1
import QtWebEngine 1.0
import QtQuick.Controls 2.15

Grid {
    id: root

    function checkOrientation() {
        root.spacing = (app.height + app.width) * 0.02

        if (app.width >= app.height) {
            root.columns = 1
            root.anchors.bottom = undefined
            root.anchors.horizontalCenter = undefined
            root.anchors.right = app.right
            root.anchors.verticalCenter = app.verticalCenter
            root.anchors.rightMargin = app.width * 0.02
            root.anchors.bottomMargin = 0
        }
        else {
            root.columns = 3
            root.anchors.right = undefined
            root.anchors.verticalCenter = undefined
            root.anchors.bottom = app.bottom
            root.anchors.horizontalCenter = app.horizontalCenter
            root.anchors.rightMargin = 0
            root.anchors.bottomMargin = app.width * 0.02
        }
    }

    NavButton {
        id: nextButton
        imageSource: "images/btn_next.png"
        onClicked:app.getNext()
    }

    NavButton {
        id: prevButton
        imageSource: "images/btn_previous.png"
        onClicked: app.getPrevious()
    }

    NavButton {
        id: themeButton
        imageSource: "images/btn_theme.png"
        onClicked: app.getPrevious()
    }

    NavButton {
        id: alarmButton
        imageSource: "images/btn_alarm.png"
        onClicked: app.getPrevious()
    }

    NavButton {
        id: rebootButton
        imageSource: "images/btn_reboot.png"
        onClicked: app.getPrevious()
    }

    NavButton {
        id: shutdownButton
        imageSource: "images/btn_shutdown.png"
        onClicked: app.getPrevious()
    }

    NavButton {
        id: aboutButton
        imageSource: "images/btn_about.png"
        onClicked: app.getPrevious()
    }
}
