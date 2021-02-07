var clockPositions = [
            "qrc:/neu-times/dist/index.html",
            "qrc:/pie-time/dist/index.html",
            "qrc:/analog-digital-clock/dist/index.html",
            "qrc:/pure-css-watch-animation/dist/index.html",
            "qrc:/pure-html-and-css-braun-clock/dist/index.html",
            "qrc:/clock/dist/index.html",
            "qrc:/cube-clock/dist/index.html",
            "qrc:/digital-clock/dist/index.html",
            "qrc:/digital-clock-3december/dist/index.html",
            "qrc:/digital-clock-with-vue-js/dist/index.html",
            "qrc:/react-dailyui014timer/dist/index.html",
            "qrc:/react-morph-clock/dist/index.html",
            "qrc:/realistic-minimal-css-clock/dist/index.html",
            "qrc:/rotate-clock-css-only/dist/index.html",
            "qrc:/canvas-clock/dist/index.html",
            "qrc:/canvasclock/dist/index.html",
            "qrc:/clock-snap/dist/index.html",
            "qrc:/clock-3d/dist/index.html",
            "qrc:/rotating-clock/dist/index.html",
            "qrc:/weekly-pen-1clocks/dist/index.html",
            "qrc:/analog-clock/dist/index.html"
        ]

var currentClockIndex = 0
var CurrentUrl=clockPositions[currentClockIndex]

function getURL()
{
    CurrentUrl = clockPositions[currentClockIndex];
    return CurrentUrl;
}


function getNext()
{
    currentClockIndex++;
    if (currentClockIndex >= clockPositions.length)
        currentClockIndex = 0;

}

function getPrevious()
{
    currentClockIndex--;
    if (currentClockIndex < 0)
        currentClockIndex = clockPositions.length-1;

}
