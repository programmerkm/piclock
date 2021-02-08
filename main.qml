/****************************************************************************
**
** Copyright (C) 2016 The Qt Company Ltd.
** Contact: https://www.qt.io/licensing/
**
** This file is part of the examples of the Qt Toolkit.
**
** $QT_BEGIN_LICENSE:BSD$
** Commercial License Usage
** Licensees holding valid commercial Qt licenses may use this file in
** accordance with the commercial license agreement provided with the
** Software or, alternatively, in accordance with the terms contained in
** a written agreement between you and The Qt Company. For licensing terms
** and conditions see https://www.qt.io/terms-conditions. For further
** information use the contact form at https://www.qt.io/contact-us.
**
** BSD License Usage
** Alternatively, you may use this file under the terms of the BSD license
** as follows:
**
** "Redistribution and use in source and binary forms, with or without
** modification, are permitted provided that the following conditions are
** met:
**   * Redistributions of source code must retain the above copyright
**     notice, this list of conditions and the following disclaimer.
**   * Redistributions in binary form must reproduce the above copyright
**     notice, this list of conditions and the following disclaimer in
**     the documentation and/or other materials provided with the
**     distribution.
**   * Neither the name of The Qt Company Ltd nor the names of its
**     contributors may be used to endorse or promote products derived
**     from this software without specific prior written permission.
**
**
** THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
** "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
** LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
** A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT
** OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
** SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
** LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
** DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
** THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
** (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
** OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE."
**
** $QT_END_LICENSE$
**
****************************************************************************/

import QtQuick 2.2
import QtQuick.Window 2.1
import QtWebEngine 1.5
import QtQuick.Controls 2.3
import QtQuick.Extras 1.4
import "engine.js" as Engine

ApplicationWindow {
    width: 800
    height: 480
    visible: true
    id: app

    property bool firstLoadComplete: false

    function updateWebView() {
        clockwebengine.url = Engine.getURL()
    }

    function getNext() {
        Engine.getNext()
        updateWebView()
    }

    function getPrevious() {
        Engine.getPrevious()
        updateWebView()
    }

    WebEngineView {
        id:clockwebengine
        anchors.fill: parent
        //anchors.rightMargin: 57
        url: Engine.getURL()

        onContextMenuRequested: {
            request.accepted = true;
        }

        onLoadingChanged: function(loadRequest) {
            if (loadRequest.status === WebEngineView.LoadSucceededStatus) {
                // Debounce the showing of the web content, so images are more likely
                // to have loaded completely.
                busy.running = true
                showTimer.start()
            }
        }

        Timer {
            id: showTimer
            interval: 500
            repeat: false
            onTriggered: {
                clockwebengine.show(true)
                firstLoadComplete = true
            }
        }

        Rectangle {
            id: webViewPlaceholder
            anchors.fill: parent
            z: 1
            color: "white"

            BusyIndicator {
                id: busy
                anchors.centerIn: parent
            }
        }


        function show(show) {
            if (show === true) {
                busy.running = false
                webViewPlaceholder.visible = false
            } else {
                webViewPlaceholder.visible = true
                busy.running = true
            }
        }

    }

    NavToolbar{ id: navigationPanel }

    Component.onCompleted: {
        //navigationPanel.checkOrientation()
    }
}
