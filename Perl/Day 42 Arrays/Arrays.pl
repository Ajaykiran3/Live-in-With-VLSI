# Arrays :
# 1. Declaring a Array :
@arr1 = ("VLSI",4,"Perl",3,"Verilog",7);
print "Elements in \@arr1 : @arr1\n";
# 2. Accessing the Elements of the Array :
print "First Element in arr1 : $arr1[0]\n";
print "Last Element in arr1 : $arr1[$#arr1]\n";# Or $arr[-1]
print "Last But one element in arr1 : $arr1[-2]\n";
print "ELements from 2 to 4 : @arr1[2..4]\n";
print "Elements From 3 to Last : @arr1[3..$#arr1]\n";
print "Last Three ELements : @arr1[$#arr1-2..$#arr1]\n";
# 3. Declaring a Numerical Arrray Using Range Operator:
@num = (30..40);
print "Elements in \@num : @num\n";
# 4. Size of Array :
print "1st Way of Finding Size of \@arr1 : ",scalar @arr1,"\n";
print "2nd Way of FInding Size of \@arr1 : ",$#arr1+1,"\n";
# 5. Functions To Add or Delete Elements in an array :
# 5.1 Add the element to the End of the Array (Push):
push (@arr1,"C",1);
print "Modified \@arr1 : @arr1\n";
# 5.2 Add the element to the starting of the Array (unshift):
unshift(@arr1,"VHDL",4);
print "Modified \@arr1 : @arr1\n";
# 5.3 Remove the element from the end of the Array (pop):
$removed_element = pop(@arr1);
print "Removed Element : $removed_element\n";
# 5.4 Remove the element from the  starting of the Array (shift):
$removed_element = shift(@arr1);
print "Removed Element : $removed_element\n";
