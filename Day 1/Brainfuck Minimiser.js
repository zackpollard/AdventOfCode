var brainfuck = prompt("Please enter the brainfuck code here...");
var minimised = "";

var brainfuckOps = ['+', '-', '<', '>', '[', ']', ',', '.'];

for(var i = 0; i < brainfuck.length; ++i) {

	var character = brainfuck[i];
	
	for(var j = 0; j < brainfuckOps.length; ++j) {

		if(character == brainfuckOps[j]) {

			minimised += character;
		}
	}
}

minimisedSplit = minimised.match(/.{1,40}/g);
minimised = "";

for(var i = 0; i < minimisedSplit.length; ++i) {

	minimised += minimisedSplit[i] + '\n';
}

console.log(minimised);