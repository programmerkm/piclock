var digitSegments = [
    [1,2,3,4,5,6],
    [2,3],
    [1,2,7,5,4],
    [1,2,7,3,4],
    [6,7,2,3],
    [1,6,7,3,4],
    [1,6,5,4,3,7],
    [1,2,3], 
    [1,2,3,4,5,6,7],
    [1,2,7,3,6]
]

document.addEventListener('DOMContentLoaded', function() {
  var _hours = document.querySelectorAll('.hours');
  var _minutes = document.querySelectorAll('.minutes');
  var _seconds = document.querySelectorAll('.seconds');
  var date;

  setInterval(function() {
    date = new Date();

    setNumber(_hours[0], Math.floor(date.getHours()/10), 1);
    setNumber(_hours[1], date.getHours()%10, 1);

    setNumber(_minutes[0], Math.floor(date.getMinutes()/10), 1);
    setNumber(_minutes[1], date.getMinutes()%10, 1);

    setNumber(_seconds[0], Math.floor(date.getSeconds()/10), 1);
    setNumber(_seconds[1], date.getSeconds()%10, 1);
  }, 1000);
});

var setNumber = function(digit, number, on) {
  //var segments = digit.querySelectorAll('.segment');
  //var current = parseInt(digit.getAttribute('data-value'));

  // only switch if number has changed or wasn't set
  if (!isNaN(parseInt(digit.getAttribute('data-value'))) && (parseInt(digit.getAttribute('data-value'))) != number) {
    // unset previous number
    digitSegments[parseInt(digit.getAttribute('data-value'))].forEach(function(digitSegment, index) {
      setTimeout(function() {
        digit.querySelectorAll('.segment')[digitSegment-1].classList.remove('on');
      }, index*45)
    });
  }
  
  if (isNaN(parseInt(digit.getAttribute('data-value'))) || (parseInt(digit.getAttribute('data-value'))) != number) {
    // set new number after
    setTimeout(function() {
      digitSegments[number].forEach(function(digitSegment, index) {
        setTimeout(function() {
          digit.querySelectorAll('.segment')[digitSegment-1].classList.add('on');
        }, index*45)
      });
    }, 250);
    digit.setAttribute('data-value', number);
  }
}
