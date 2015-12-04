var input = document.body.getElementsByTagName("pre")[0].innerHTML;

//The input grabbing method doesn't really seem to like those characters...
//This just turns them into the correct characters so that we can split easier later.
input = input.replace("&gt;", "").replace("&lt;", "");
console.log(input);

var x = 0;
var y = 0;

var split = input.split('');

var positions = new Map();
positions.set("0,0", 1);

for(var i = 0; i < split.length; ++i) {

	var operation = split[i];
	
	switch(operation) {
		case '^': {

			++y;
			break;
		}
		case 'v': {

			--y;
			break;
		}
		case '>': {

			++x;
			break;
		}
		case '<': {

			--x;
			break;
		}
		default: {

			continue;
		}
	}

	var position = x + "," + y;

	var occurence = positions.get(position);

	if(occurence == undefined) occurence = 0;
	++occurence;

	positions.set(position, occurence);
}

var count = 0;

alert(positions.size + " houses were visited.");