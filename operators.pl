#operators
=head
print"1.Arithematic_operators\n";

print"enter the two elements\n";
$a=<STDIN>;
$b=<STDIN>;
print"addition:",$a+$b,"\n";
print"subtraction:",$a-$b,"\n";
print"multiplication:",$a*$b,"\n";
print"division:",$a/$b,"\n";
print"modules:",$a%$b,"\n";
print"Exponent:",$a**$b,"\n";
=cut
=head
print"2.relational operator\n";
$c=<STDIN>;
$d=<STDIN>;
#if(($c == $d) && ($c eq $d))
if($c eq $d)
{
print"\$c and \$d are equal";
}

if($c ne $d)
{
print"\$c and \$d are not equal";
}
$e=$c cmp $d;
print"$e\n";
=cut

=head
print"3.Assignment operator\n";
$a=<STDIN>;
$b=<STDIN>;
$c=<STDIN>;
$d=<STDIN>;
print $a+=$b,"\n";
print $a/=$c,"\n";
print $b%=$c,"\n";
print $d**=$c,"\n";
=cut

=head
print"4.Bitwise operator\n";
use integer;
$a=60;
$b=13;
print $a&$b,"\n";
print $a|$b,"\n";
print $a ^ $b,"\n";
print $a<<$b,"\n";
print $a>>$b,"\n";
print ~$a,"\n";
=cut

=head
print"5.logical operator\n";

unless( ""&&0 or " "&&not(1))
{
print"hii\n";
}
=cut

=head
print"6.quote like operator\n";
$a=10;
$b= qq{a=$a};
print q{a=$a}.qq{\n};
print $b,"\n";
print qx{cd},"\n";
=cut

=head
print"6.miscellaneous operator\n";
$a=10;
print "abd" x 3,"\n";
print ++$a,"\n";
print $a--,"\n";
print $a,"\n";
=cut

$a=10;
print ++$a + $a++ - $a-- - --$a;




