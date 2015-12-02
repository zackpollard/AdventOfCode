var input = document.body.getElementsByTagName("pre")[0].innerHTML;

var floor = 0;

for(var i = 0; i < input.length; ++i) {
    
    if(input.charAt(i) == '(') {
    
        ++floor;
    } else {

        --floor;
    }

    if(floor == -1) {

        alert("The correct index is " + (i + 1));
        break;
    }
}