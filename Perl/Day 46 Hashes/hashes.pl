# Hash : 
$comment = <<"Comment";
1. Hash :
-> Hash is a set having key Value pairs.
-> % Symbol is used to  Create a hash.
-> Syntax : %<Hash Name> = {key1=>value1,key2=>value2...};
-> => symbol is used for relate value to a key.
Comment
print "$comment\n";
%hashes = ("Perl" => 4, Verilog => 7, "VLSI" => 4); 
print "Hashes : ",%hashes,"\n";
$comment = <<"Comment";

2. Accesing Value from a key :
-> Syntax : \$Hashname>{<Key>};
Comment
print "$comment\n";
print "Accesing Value from Key Verilog : ",$hashes{"Verilog"},"\n"; 
$comment = <<"Comment";

3. Extracting Keys in to Array :
-> Syntax : keys %<Hash Name>;
Comment
print "$comment\n";
@keys_arr = keys %hashes;
print "Keys Array = @keys_arr\n"; 
$comment = <<"Comment";

4. Extracting Values in to Array :
-> Syntax : values %<Hash Name>;
Comment
print "$comment\n";
@values_arr = values %hashes;
print "Values Array = @values_arr\n";
$comment = <<"Comment";

5. Exists() Function:
-> Syntax : exists $<Hash Name>{<Key>};
Comment
print "$comment\n";
if (exists $hashes{Verilog}){
    print "Key is Exists\n";
}
else {
    print "Key is Not Exists";
}
$comment = <<"Comment";

6. Not Exists() Function:
-> Syntax : !exists $<Hash Name>{<Key>};
Comment
print "$comment\n";
if (!exists $hashes{Verilog}){
    print "Key is Not Exists\n";
}
else {
    print "Key is Exists\n";
}
$comment = <<"Comment";

7. Hash Size :
-> Extrating keys or values into a array and get the size of array.
Comment
print "$comment\n";
print "Size of Hash from keys : ",$#keys_arr+1,"\n";
print "Size of Hash from Values : ",scalar @values_arr,"\n";
$comment = <<"Comment";

8. Adding Key Value pair to hash:
-> Syntax : $<Hash Name>{<key>} = <Value>;
Comment
print "$comment\n";
$hashes{"Linux"} = 5;
print "Updated Hash : ",%hashes,"\n";
print "Linux Key Value : $hashes{Linux}\n";
$comment = <<"Comment";

9. Deleting Key Value pair :
-> Syntax : delete $<Hash Name>{<key>};
Comment
print "$comment\n";
delete $hashes{"Linux"};
print "Updated Hash : ",%hashes,"\n";






