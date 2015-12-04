var input = document.body.getElementsByTagName("pre")[0].innerHTML;

//The input grabbing method doesn't really seem to like those characters...
//This just turns them into the correct characters so that we can split easier later.
input = input.replace(/&gt;/g, ">").replace(/&lt;/g, "<");
console.log(input);

var robox = 0;
var roboy = 0;
var santax = 0;
var santay = 0;

var santamoving = true;

var split = input.split('');

var positions = new Map();
positions.set("0,0", 2);

for(var i = 0; i < split.length; ++i) {

	var operation = split[i];
	
	switch(operation) {
		case '^': {

			if(santamoving) {
				++santay;
			} else {
				++roboy;
			}
			break;
		}
		case 'v': {

			if(santamoving) {
				--santay;
			} else {
				--roboy;
			}
			break;
		}
		case '>': {

			if(santamoving) {
				++santax;
			} else {
				++robox;
			}
			break;
		}
		case '<': {

			if(santamoving) {
				--santax;
			} else {
				--robox;
			}
			break;
		}
		default: {

			continue;
		}
	}

	var position = undefined;

	if(santamoving) {

		position = santax + "," + santay;
	} else {

		position = robox + "," + roboy;
	}

	var occurence = positions.get(position);

	if(occurence == undefined) occurence = 0;
	++occurence;

	positions.set(position, occurence);

	santamoving = !santamoving;
}

var count = 0;

alert(positions.size + " houses were visited.");