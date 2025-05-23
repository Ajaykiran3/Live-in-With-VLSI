# Split and join in Perl :
# Split :
$comment = <<"Comment";

1. Split Function = Split Function is Used to Convert String to Array 
Depending on a Delimiter.

Syntax : split("delimiter",<String>);

Example :
Comment
print "$comment\n";
$string = "VLSI=4=Perl=4=VHDL=4=Verilog=7";
@array = split("=",$string);
print "\$String = $string\n";
print "\@Array = @array\n";
#Join :
$comment = <<"Comment";
2. Join Function = Join Function is used to Convert the Array to String
Depending on a Delimiter.

Syntax : join("delimiter",<Array>);

Example :
Comment
print "\n$comment\n";
@array = ("VLSI",4,"Perl",4,"VHDL",4,"Verilog",7);
$string = join("=",@array);
print "\@Array = @array\n";
print "\$String = $string\n";
