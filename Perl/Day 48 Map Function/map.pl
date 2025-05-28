# Map() Function :
$comment = <<"comment";
1. Map():
-> Evaluates a block or expression on each element of array and
returns an array or a hash.
-> Syntax : map {Expression using \$_} \@array_name
->Example 1: Square of element in array to Hash
comment
print "$comment\n";
@arr = (1..5,10..15);
%square_arr = map {$_ => $_ * $_} @arr;
print "Original Array : @arr\n";
print "Modified Array : ",%square_arr,"\n";
$comment = <<"comment";

->Example 2: Increment Each Element in Array by 1
comment
print "$comment\n";
@inc_by_2_arr = map {$_+1} @arr;
print "Original Array : @arr\n";
print "Modified Array : @inc_by_2_arr\n";
$comment = <<"comment";

->Example 3: Decrement Each Element in Array by 2
comment
print "$comment\n";
@dec_by_2_arr = map {$_-2} @arr;
print "Original Array : @arr\n";
print "Modified Array Array : @dec_by_2_arr\n";
$comment = <<"comment";

->Example 4: Double Each Element in Array.
comment
print "$comment\n";
@double_arr = map {$_+ $_} @arr;
print "Original Array : @arr\n";
print "Modified Array : @double_arr\n";
$comment = <<"comment";

->Example 5: Add -Tech to Technologies and get Array
comment
@arr = (Perl,Python,C,Python,VLSI,Verilog);
print "$comment\n";
@modified_arr = map {$_.-Tech} @arr;
print "Original Array : @arr\n";
print "Modified Array : @modified_arr\n";
$comment = <<"comment";

->Example 6: Add -Tech to Technologies and get Hash
comment
print "$comment\n";
%modified_hash = map {$_ => 3} @arr;
print "Original Array : @arr\n";
print "Modified Hash : ",%modified_hash,"\n";
$comment = <<"comment";

->Example 7: Get Unique Elements of Array
comment
print "$comment\n";
print "Original Array : @arr\n";
print "Unique Array : ",keys %modified_hash,"\n";






