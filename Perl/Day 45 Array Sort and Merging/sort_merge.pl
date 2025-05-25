# Array Sorting and Merging :
$comment = <<"Comment";
1. Sort :
Sort() function sorts an array based on ASCII.
Syntax : sort(@<Array Name>);
Example:
Comment
print "$comment\n";
@alphabets = ("E","D","C","B","A");
print "\@Alphabets : @alphabets\n";
@sorted_alphabets = sort(@alphabets);
print "\@Sorted_alphabets : @sorted_alphabets\n";
$comment = <<"Comment";
2. Merging :
Two or More Arrays Can be Merged.
Syntax : (@<Array1>,@<Array2>);
Example:
Comment
print "$comment\n";
@arr1 = (@alphabets,@sorted_alphabets);
print "\@arr1 = @arr1\n";

