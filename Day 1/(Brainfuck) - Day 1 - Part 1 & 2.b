Initialise cell 0 to 45 (negative symbol)
+++++++++++++++++++++++++++++++++++++++++++++
>
Initialise cell 1 to 41 (right bracket symbol)
+++++++++++++++++++++++++++++++++++++++++
Increments the input cell to 2 and adds one so the loop doesn't instantly quit
> + 
Initialises cell 11 and 12 to 1 and then returns to cell 2
>>>>>>>>>+>+<<<<<<<<<<
[
0 = negative symbol (45)
1 = y1 ')' = 41
2 = x "0 == ')' other == '('"
3 = temp0
4 = temp1
5 = upfloor
6 = downfloor
7 = temp2
8 = temp3
9 = temp4
10 = temp5
11 = Operation going to basement found? 0 = yes 1 = no
12 = operation#

Take the next character of input
#2#
,
    Compare input to value 4
    [
        Go to temp 0 and increment
        #3#
        >[+]
        Go to temp 1 and decrement
        #4#
        >[-]
        Go to X
        #2#
        <<
        If x isn't 0 then increment temp1 and decrement X
        [
            #4#
            >>+
			#2#
            <<-
        ]
        Move to y (cell 1 value 41)
        #1#
        <
        If cell 0 isn't 0 then decrement temp1 and y and increment temp0
        [
            #4#
        	>>>-
        	#3#
        	<+
        	#1#
        	<<-
        ]
        Move to temp 0
        #3#
        >>
        If temp 0 isn't 0 then increment y and decrement temp 0
        This is for the restoration of y to it's original state
        [
            #1#
            <<+
			#3#
            >>-
        ]
        Move to temp 1
        #4#
        >
		If temp 1 isn't 0 then decrement x and if temp1 isn't 0 then decrement temp1
        [
            #2#
            <<+
            #4#
            >>[+]
        ]
        #3#
        <[-]+
        #4#
        >[-]

        #2#
        <<
        #Runs if "("
        [
            #7#
            >>>>>[-]+
            #8#
            >[-]
            #5#
            #If upfloor isn't 0
            <<<[
                Increment upfloor
                +
                #7#
                >>-
                #5#
                <<[>>>+<<<-]
            ]
            #8#
            >>>[<<<+>>>-]
            #7#
            #Else if upfloor is 0
            <[
                
                #9#
                >>[-]+
                #10#
                >[-]
                #6#
                <<<<
                #If downfloor isn't 0
                [
                    #Decrement downfloor
                    -
                    #9#
                    >>>-
                    #6#
                    <<<[>>>>+<<<<-]
                ]
                #10#
                >>>>[<<<<+>>>>-]
                #Both upfloor and downfloor are 0
                #9#
                <[
                    #Increment upfloor
                    #5#
                    <<<<+
                    #9#
                    >>>>-
                ]
                #7#
                <<-
            ]
            #2#
            <<<<<
            #3#
            >-
        ]
        #3#
        >

        #Runs if ")"
        [
            #2#
            <
            #7#
            >>>>>[-]+
            #8#
            >[-]
            #6#
            #If downfloor isn't 0
            <<[
                Increment downfloor
                +
                #7#
                >-
                #6#
                <[>>+<<-]
            ]
            #8#
            >>[<<+>>-]
            #7#
            #Else if downfloor is 0
            <[
                #temp0#
                #9#
                >>[-]+
                #temp1#
                #10#
                >[-]
                #upfloor#
                #5#
                <<<<<
                #If upfloor isn't 0
                [
                    #Decrement upfloor
                    -
                    #9#
                    >>>>-
                    #upfloor#
                    #5#
                    <<<<[>>>>>+<<<<<-]
                ]
                #10#
                >>>>>[<<<<<+>>>>>-]
                #Both upfloor and downfloor are 0
                #9
                <[
                    #Increment downfloor
                    #6#
                    <<<+
                    #9#
                    >>>-
                    0 = negative symbol (45)
                    1 = y1 ')' = 41
                    2 = x "0 == ')' other == '('"
                    3 = temp0
                    4 = temp1
                    5 = upfloor
                    6 = downfloor
                    7 = temp2
                    8 = temp3
                    9 = temp4
                    10 = temp5
                    11 = operation#
                    12 = Operation going to basement found? 0 = yes 1 = no
                    
                    #11#
                    >>
                    [

                        Move to free cell to write out ASCII characters
                        #13#
                        >>
                        ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++.
                        +++++++++++++++++.
                        +++++++++++++++++.
                        ++.
                        ------------------------------------------------------------------------------------.
                        ++++++++++++++++++.
                        ++++++++.
                        --------------------------.
                        [-]
                        #11#
                        <<
                        Move to operation counter and print out the amount of operations
                        #12#
                        >[>>+>+<<<-]>>>[<<<+>>>-]<<+>[<->[>++++++++++<[->-[>+>>]>[+[-<+>]>+>>]<<<<<]>[-]
                        ++++++++[<++++++>-]>[<<+>>-]>[<<+>>-]<<]>]<[->>++++++++[<++++++>-]]<[.[-]<]<

                        #11#
                        Move back to operation checker and decrement to zero to exit loop and not call this print again
                        <-
                    ]
                    <<
                ]
                #7#
                <<-
            ]
            #3#
            <<<<-

            #2#
            <
            #4#
            >->
        ]

        Shifts to cell 12 and adds one to the operation count
        >>>>>>>>+<<<<<<<<
        #2#
        <<
        ,
    ]
]
>>>>>>>>>>[-]<<<<<<<<<<
#5#
>>>
#13#
>>>>>>>>
++++++++++.
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++.
+++++++++++++++++.
+++++++++++++++++.
++.
------------------------------------------------------------------------------------.
+++++++++++++++++.
+++++++++.
--------------------------.
[-]
<<<<<<<<
#3#
<<[-]+
#4#
>[-]
#5#
Runs if upfloor isn't 0
>[
    [>>+>+<<<-]>>>[<<<+>>>-]<<+>[<->[>++++++++++<[->-[>+>>]>[+[-<+>]>+>>]<<<<<]>[-]
    ++++++++[<++++++>-]>[<<+>>-]>[<<+>>-]<<]>]<[->>++++++++[<++++++>-]]<[.[-]<]<	
    #3#
	<<-
	#5#
	>>[<+>-]
]
#4#
<[>+<-]
#3#
#Runs if upfloor is 0
<[
    #0#
    <<<
    .
    #6#
    >>>>>>
    [>>+>+<<<-]>>>[<<<+>>>-]<<+>[<->[>++++++++++<[->-[>+>>]>[+[-<+>]>+>>]<<<<<]>[-]
    ++++++++[<++++++>-]>[<<+>>-]>[<<+>>-]<<]>]<[->>++++++++[<++++++>-]]<[.[-]<]<
    <<<
    -
]