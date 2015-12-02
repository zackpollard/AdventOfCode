var input = document.body.getElementsByTagName("pre")[0].innerHTML;

var ribbonNeeded = 0;

var splitInput = input.split('\n');

for(i = 0; i < splitInput.length; ++i) {

	var dimensions = splitInput[i].split('x');

	if(dimensions == "") continue;

	var l = parseInt(dimensions[0]);
	var w = parseInt(dimensions[1]);
	var h = parseInt(dimensions[2]);

	var lwlw = (l * 2) + (w * 2);
	var hwhw = (h * 2) + (w * 2);
	var lhlh = (l * 2) + (h * 2);

	var smallest = lwlw;
	if(hwhw < smallest) smallest = hwhw;
	if(lhlh < smallest) smallest = lhlh;

	ribbonNeeded += smallest + (l * w * h);
}

alert(ribbonNeeded + "ft of ribbon needed.");