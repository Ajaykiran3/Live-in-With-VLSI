# Arrays :
# 1. Decalring Array :
@arr = (10,20,30,40,50,60,70);
print "Array \@arr : @arr\n";
# 2. Slicing Array :
print "Sliced Part of \@arr : @arr[2..5]\n";
# 3. Splicing Array :
# 3.1 Replacing Set of Data From @arr Array :
splice (@arr,2,3,3..5);
print "Modified \@arr : @arr\n";
# 3.2 Removing Data From the end of the @arr Array :
@removed_part = splice (@arr,-4);
print "Removed Part of \@arr : @removed_part\n";
print "Modified \@arr : @arr\n";
