# Chomp and Chop:
$comment = <<"Comment";
1. Chomp : 
-> Chomp function is used to remove the newline at the end of a scalar.
1.1 Chomp on Scalars :
-> Syntax : Chomp(scalar_name);
Example :
Comment
print "$comment\n";
print "Enter a Scalar : ";
$scalar = <STDIN>; # <STDIN> is used to read data from cmd prompt.
print "Original Scalar : $scalar\n";
chomp($scalar);
print "Chomped Scalar : $scalar\n";
$comment = <<"Comment";

1.2 Chomp on Arrays : 
-> Syntax : Chomp(Array_name);
Example :
Comment
print "$comment\n";
@arr = ("Perl\n","Verilog\n","VLSI\n");
print "Original Array = @arr\n";
chomp(@arr);
print "Chomped Array = @arr\n";
$comment = <<"Comment";

1.3 Chomp on hash : 
-> Syntax : Chomp(Hash_name);
Example :
Comment
print "$comment\n";
%hashes = ("Perl"=>"4\n",Verilog => "7\n","VLSI"=>"4\n");
print "Original Hash = ",%hashes,"\n";
chomp(%hashes);
print "Chomped Hash = ",%hashes,"\n";
$comment = <<"Comment";

2. Chop : 
-> Chop function is used to remove the last character at the end of a scalar.
2.1 Chop on Scalars :
-> Syntax : Chop(scalar_name);
Example :
Comment
print "$comment\n";
print "Enter a Scalar : ";
$scalar = "Perls"; # <STDIN> is used to read data from cmd prompt.
print "Original Scalar : $scalar\n";
chop($scalar);
print "Choped Scalar : $scalar\n";
$comment = <<"Comment";

2.2 Chop on Arrays : 
-> Syntax : Chop(Array_name);
Example :
Comment
print "$comment\n";
@arr = ("Perl\n","Verilog\n","VLSI\n");
print "Original Array = @arr\n";
chop(@arr);
print "Choped Array = @arr\n";
@arr1 = ("Perl-","Verilog-","VLSI-");
print "Original Array = @arr1\n";
chop(@arr1);
print "Choped Array = @arr1\n";
$comment = <<"Comment";

2.3 Chop on hash : 
-> Syntax : Chop(Hash_name);
Example :
Comment
print "$comment\n";
%hashes = ("Perl"=>"4\n",Verilog => "7\n","VLSI"=>"4\n");
print "Original Hash = ",%hashes,"\n";
chop(%hashes);
print "Choped Hash = ",%hashes,"\n";
%hashes1 = ("Perl"=>"4-",Verilog => "7-","VLSI"=>"4-");
print "Original Hash = ",%hashes1,"\n";
chop(%hashes1);
print "Choped Hash = ",%hashes1,"\n";
