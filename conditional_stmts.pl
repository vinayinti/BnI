#if statement:
=head
$a;
if(10 || -20)
{
print"accepts all positive and negative values\n";
}
=cut

#if - else statement:
=head
if(0 or '0' || "" or !(1) || () or $a || not(2,3))
{
print"It is false in boolean\n";
}
else
{
print"It accepts remaining all values";
}
=cut

#if-elsif-else statement:
#largest of three numbers
=head
$a=10;
$b=20;
$c=40;

if($a>$b && $a>$c)
{
print"a is larger number";
}
elsif($b>$c)
{
print"B is larger number";
}
else
{
print"c is greater";
}
=cut 


#unless statements
=head
unless(( ))
{print"It executes only if the condition is false\n";
}
=cut

#unless-else
=head
$a=10;
unless(($a%2) !=0)
{
print"number is even";
}
else
{
print"number is odd";
}
=cut

=head
#unless-elsif-else
use Scalar
$a=20;
$b=5;
# ch=0 -> add and ch>1 ->sub
print"enter the choice";
$c=<STDIN>;
print"reference is" . ref($c) . "\n";
unless($c)
{print"add is " . "$a+$b";
}
elsif($c==1)
{
print"sub is $a-$b";
}
else
{
print"invalid choice";}
=cut

=head
#ternary operator

$a=<STDIN>;
$b=<STDIN>;
$c=<STDIN>;
($a>$b)?(($a>$c)?print"a is large":print"c is large"):(($b>$c)?print"b is large":print"c is large");
=cut




