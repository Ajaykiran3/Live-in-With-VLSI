# White Spaces
$VLSI     =    "Perl";
#Quotes :
=Perl Single Quotes Can't Recognize the $ infront of VLSI,
So that we get output as $VLSI
=cut
$Digital   =  '$VLSI';
print $Digital,"\n";
=Perl Double Quotes can able to recognize the $ infront of VLSI
and in $VLSI we have the Perl. So that We get ouput as Perl.
=cut
$Digital   =  "$VLSI";
print $Digital,"\n";
=Perl Double Quotes can't able to recognize the $ if it is followed by \
So that we get output as $VLSI
=cut
$Digital   =   "\$VLSI";
print $Digital,"\n";
