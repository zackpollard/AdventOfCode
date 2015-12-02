var input = document.body.getElementsByTagName("pre")[0].innerHTML;

var paperNeeded = 0;

var splitInput = input.split('\n');

for(i = 0; i < splitInput.length; ++i) {

	var dimensions = splitInput[i].split('x');

	if(dimensions == "") continue;

	var l = parseInt(dimensions[0]);
	var w = parseInt(dimensions[1]);
	var h = parseInt(dimensions[2]);

	var lw = l * w;
	var wh = w * h;
	var hl = h * l;

	var smallest = lw;

	if(wh < smallest) smallest = wh;
	if(hl < smallest) smallest = hl;

	paperNeeded += (2 * lw) + (2 * wh) + (2 * hl) + smallest;
}

alert(paperNeeded + "ft of paper is required.");