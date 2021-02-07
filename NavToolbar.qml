import QtQuick 2.2
import QtQuick.Window 2.1
import QtQuick.Controls 2.15

Item {
    width: 800
    height: 50

    ToolBar {
        id: toolBar
        x: 0
        y: 0
        width: 800
        height: 50

        NavButton {
            id: nextButton
            x: 11
            y: 0
            imageSource: "images/btn_next.png"
            onClicked:app.getNext()
        }

        NavButton {
            id: prevButton
            x: 78
            y: 0
            imageSource: "images/btn_previous.png"
            onClicked: app.getPrevious()
        }

    }

}
