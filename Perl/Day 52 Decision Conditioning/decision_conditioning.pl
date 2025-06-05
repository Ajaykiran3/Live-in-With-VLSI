use strict;
use warnings;
my $comment = <<"comment";
1. Decision Conditioning Statements 
-> if, if..else, if..elsif..else
-> unless, unless..else, unless..elsif..else
-> switch
-> Ternary Opeartor : Condition?<True>:<False>
Example 1 :if statement
comment
print "$comment\n";
my @str = ("Verilog","VLSI","Perl","Python");
if ($str[$#str] eq "Python") {
    print "if is True\n"
}
my $comment = <<"comment";
Example 2 :if..else statement
comment
print "$comment\n";
my @str = ("Verilog","VLSI","Perl","Python");
if ($str[$#str] eq "python") {
    print "if is True\n";
}
else{
    print "Else is True\n";
}
my $comment = <<"comment";
Example 3 :if..elsif..else statement
comment
print "$comment\n";
my @str = ("Verilog","VLSI","Perl","Python");
if ($str[$#str] eq "python") {
    print "if is True\n";
}
elsif($str[$#str-1] eq "Perl"){
    print "ELsif is True\n";
}
else{
    print "Else is True\n";
}
my $comment = <<"comment";
Example 4 :Nested if statement
comment
print "$comment\n";
my @str = ("Verilog","VLSI","Perl","Python");
if ($str[$#str] eq "Python") {
    if($str[0] eq "Verilog"){
        print "Nested if is True\n";
    }
}
my $comment = <<"comment";
Example 5 :Unless statement
comment
print "$comment\n";
my @str = ("Verilog","VLSI","Perl","Python");
unless ($str[$#str] eq "python") {
    print "Unless is True\n";
}
my $comment = <<"comment";
Example 6 :Unless..else statement
comment
print "$comment\n";
my @str = ("Verilog","VLSI","Perl","Python");
unless ($str[$#str] eq "Python") {
    print "Unless is True\n";
}
else{
    print "Else is True\n"
}
my $comment = <<"comment";
Example 7 :Unless..elsif..else statement
comment
print "$comment\n";
my @str = ("Verilog","VLSI","Perl","Python");
unless ($str[$#str] eq "Python") {
    print "Unless is True\n";
}
elsif ($str[0] eq "Verilog"){
    print "Elsif is True\n";
}
else{
    print "Else is True\n";
}
my $comment = <<"comment";
Example 8 : Ternary Operator
comment
print "$comment\n";
print "Enter your name : ";
my $name = <STDIN>;
chomp($name);
(length($name)==7)?print "Length of your name is 7":print "Length of your name is not 7 and it is ",length($name),"\n";

