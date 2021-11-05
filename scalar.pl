=head
#creating scalar variables
$integer = 25; 
$negative = -30; 
$floating = 120.3; 
$bigfloat = -1.8E-23;
$octal = 0377; # 377 octal, same as 255 decimal->0 indicates octal
$hexa = 0xff; # FF hex, also 255 decimal->0x indicates hexadecimal.
print "integer = $integer\n";
print "negative = $negative\n";
print "floating = $floating\n";
print "bigfloat = $bigfloat\n";
print "octal = $octal\n";
print "hexa = $hexa\n";
=cut

=head
$var = "This is so good!";
print "var = $var\n";  
=cut

=head
#scalar operations
$str = "hello" . "world"; # Concatenates strings. 
$num = 5 + 10; # adds two numbers. 
$mul = 4 * 5; # multiplies two numbers. 
$mix = $str . $num; # concatenates string and number. 
print "str = $str\n";
print "num = $num\n";
print "mul = $mul\n"; 
print "mix = $mix\n";
=cut
