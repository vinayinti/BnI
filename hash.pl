=head
%data = ('John Paul'=> 45, 'Lisa', 30, Kumar=>40);
print "\$data{'45'} = $data{45}\n";
print "\$data{'Lisa'} = $data{'Lisa'}\n";
print "\$data{Kumar} = $data{Kumar}\n";
=cut


=head
@arr=%data;
print "@arr\n";
$arr_size=@arr;
print "$arr_size\n";
%hash=%data;
print %hash . "\n";
$scalar=%data;
print "$scalar\n";
=cut

=head
#Extacting slices from hashes
%data = (JohnPaul => 45, Lisa => 30, Kumar => 40); 
@array = @data{JohnPaul, Lisa}; 
print "Array : @array\n";
=cut

=head
#Extracting keys from hash
%data = ('John Paul' => 45, 'Lisa' => 30, 'Kumar' => 40);
@names = keys %data;
print "$names[0]\n";
print "$names[1]\n"; 
print "$names[2]\n";
#Extracting values from hash
#%data = ('John Paul' => 45, 'Lisa' => 30, 'Kumar' => 40);
@ages = values %data;
print "$ages[0]\n";
print "$ages[1]\n"; 
print "$ages[2]\n";
=cut

=head
#getting Hash size
%data = ('John Paul' => 45, 'Lisa' => 30, 'Kumar' => 40); 
@keys = keys %data;
$size = @keys; 
print "1 - Hash size: is $size\n";
@values = values %data; 
$size = @values; 
print "2 - Hash size: is $size\n";
=cut

=head
#Adding and removing the elements in Hash
%data = ('John Paul' => 45, 'Lisa' => 30, 'Kumar' => 40); 
@keys = keys %data; 
$size = @keys;
print "1 - Hash size: is $size\n"; 
$data{'Ali'} = 55; # adding an element to the hash; 
@keys = keys %data; 
$size = @keys; 
print "2 - Hash size: is $size\n"; 
delete $data{'Ali'}; #delete the same element from the hash; 
@keys = keys %data;
$size = @keys;
print "3 - Hash size: is $size\n";
=cut

=head
#Checking for existence of hash value.
%data = ('John Paul' => 45, 'Lisa' => 30, 'Kumar' => 40);
if( exists($data{'Lisa'} ) )
{
	print "Lisa is $data{'Lisa'} years old\n"; 
} 
else { 
	print "I don't know age of Lisa\n"; 
}
=cut