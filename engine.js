var clockPositions = [
            "qrc:/animated-digital-led-clock/dist/index.html",
            "qrc:/pomodoro-clock/dist/index.html",
            "https://covid19.who.int/",
            "https://www.flightradar24.com",
            "https://www.heathrow.com/arrivals"
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
