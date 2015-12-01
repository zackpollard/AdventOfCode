var input = prompt("Please enter the Day 1 input.", "Enter input here...");

var floor = 0;

for(var i = 0; i < input.length; ++i) {
    
    if(input.charAt(i) == '(') {
    
        ++floor;
    } else {

        --floor;
    }
}

alert("The final floor is " + floor);