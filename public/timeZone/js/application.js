var current_date = new Date();
var currentTimeZoneOffset = -current_date.getTimezoneOffset() / 60;

$(document).ready(function(){

	//Set the time to current time
	setTime(currentTimeZoneOffset);

	$('.tz').click(function(){
	  utcZone = $(this).attr('id');
	  currentTimeZoneOffset = utcZone;
	  setTime(utcZone);
	});
});

function getDate(offset){
  var now = new Date();
  var hour = 60*60*1000;
  var min = 60*1000;
  return new Date(now.getTime() + (now.getTimezoneOffset() * min) + (offset * hour));
}

function setTime(offset){
  timeInTimeZone = getDate(offset);
  //$('#timeOfTimeZone').html(timeInTimeZone.toString());
  return false;
}

