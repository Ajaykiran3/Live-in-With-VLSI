$comment = <<"comment";
1. use strict :
-> Forces script to declare the scope of variable.
-> Identify the barewords.
Example 1 : Using pragma without declaring scope of variable
comment
use strict;
$string = "Perl";
print "$string\n";
my $comment = <<"comment";
Example 2 : Using pragma with declaring scope of variable
comment
use strict;
my $string = "Perl";
print "$string\n";
my $comment = <<"comment";
2. use warnings :
-> missing semicolon
-> Wrong Syntax
-> Deprecated Function
-> Declaring a Variable with same name again
Example 3 : using same variable 2 times with using pragma
comment
use warnings;
my $string = "Perl";
my $string = "Python";
print "$string\n";
my $comment = <<"comment";
Example 4 : using same variable 2 times with using pragma
comment
use warnings;
my $string = "Perl";
my $string = "Python";
print "$string\n";
