# grep() function:
$comment = <<"comment";
Grep Function :
-> Evaluates a block or Expression and return an array of having 
Elements which are evaluated to true
-> Syntax : grep{Expression}@<Array Name>

Example 1 : To print Elements in Array Start with P.
comment
print "$comment\n";
@tech = ("Perl","Python","C","VLSI");
@tech = grep{/^P/} @tech;
print "@tech\n";
$comment = <<"comment";
Example 2 : To print Elements in Array not Start with P.
comment
print "$comment\n";
@tech = ("Perl","Python","C","VLSI");
@tech = grep{!/^P/} @tech;
print "@tech\n";
$comment = <<"comment";
Example 3 : To print Elements in Array Start with P and assign value 4 to them.
comment
print "$comment\n";
@tech = ("Perl","Python","C","VLSI");
%tech = map{$_=>4}grep{/^P/} @tech;
print %tech,"\n";
$comment = <<"comment";
Example 4 : To print Elements in Array greater than 3.
comment
print "$comment\n";
@num = (1,2,3,4,5,6);
@num = grep{$_>= 3} @num;
print "@num\n";

