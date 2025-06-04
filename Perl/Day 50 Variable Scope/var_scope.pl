$comment = <<"comment";
1. Variable Scope :
-> There are 3 types of Variable Scopes:
-> 1. my :
    => Variable declared with my scope at the 
    beginning of a Script is accessible throughout the Script including subroutines.
    => Variable declared with my scope inside a sub routine is accessible within that sub routine.
-> 2. local:
    => Accessible within only block or a subroutine.
-> 3. our:
    => Accessible Globally
-> Example 1 : my scope variable declared outside and use in both subroutine and main program.
comment
print "$comment\n";
my $string = "Perl";
sub myfunction {
    print "Inside a Sub Routine : $string\n";
}
print "Outside a Sub Routine : $string\n";
myfunction();
$comment = <<"comment";
-> Example 2 : my scope variable inside of subroutine and use in both subroutine and main program.
comment
print "$comment\n";
sub myfunction1 {
    my $string1 = "Perl";
    print "Inside a Sub Routine : $string1\n";
}
print "Outside a Sub Routine : $string1\n";
myfunction1();
$comment = <<"comment";
-> Example 3 : local scope variable inside of subroutine and use in both subroutine and main program.
comment
print "$comment\n";
sub myfunction2 {
    local $string2 = "Perl";
    print "Inside a Sub Routine : $string2\n";
}
print "Outside a Sub Routine : $string2\n";
myfunction2();
$comment = <<"comment";
-> Example 4 : local scope variable declared outside and use in both subroutine and main program.
comment
print "$comment\n";
local $string3 = "Perl";
sub myfunction3 {
    print "Inside a Sub Routine : $string3\n";
}
print "Outside a Sub Routine : $string3\n";
myfunction3();
$comment = <<"comment";
-> Example 5 : Difference between Local and my variable 
comment
print "$comment\n";
sub localfunction {
    my $mystr = "Perl";
    local $localstr = "Python";
    print "$mystr\n";
    print "$localstr\n";
    sub1();
}
sub sub1 {
    print "$mystr\n";
    print "$localstr\n";
}
localfunction();