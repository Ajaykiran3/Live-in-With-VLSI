use strict;
use warnings;
my $comment = <<"comment";
1. Loops :
-> while loop : 
    => While loop is executed when the condition is evaluated to True.
-> do..While loop :
    => The Block is executed first and if condition is True, it Repeats.
-> until loop :
    => It is Opposite to while and Do While
    => Until Loop is executed Only When the Condition is Evaluted to the False.
-> for loop :
    => Used Like the Same as we use in C.
-> foreach loop :
    => For each loop is used to iterate through an array or an hash.
-> while...each loop : 
    => While each loop is used to iterate through a hash.
-> Nested Loop :
    => It is used to create 2 dimensional array and etc.
2. Loop Control Statements :
-> next statement : Skips the Remaining code based on a condition and re-iterates
through the loop
-> last statement : Terminates the loop
-> continue Statement : Block in continue is executed just before the next iteration. Rarely Used
-> redo Statement : Restarts the loop without evaluating the condition.
-> goto statement : Jumps the statement with given label, Expression (or) subroutine.
3. infinte Loop :
-> infinite loop (or) recursive loop executes where a condition never becomes false.
-> for(;;) loop is used for this purpose where none of the conditions are given
-> To stop the loop execution give ctrl+C.
comment
print "$comment\n";

