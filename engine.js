var clockPositions = [
            "qrc:/animated-digital-led-clock/dist/index.html",
            "qrc:/pomodoro-clock/dist/index.html",
            "https://covid19.who.int/",
            "https://www.youtube.com/channel/UC936vJaPNT0QZI6McJhCXmA"
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
