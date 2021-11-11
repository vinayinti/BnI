print"\nCALLING AND DEFINE A SUBROUTINE\n";
sub hello
{
	print"welcome, Hello\n";
}

hello();

print"\nPASSING ARGUMENTS\n";

sub sample1
{
	print"@_\n";
}
sub sample2
{
	print"@_\n";
}
sub sample3
{
	print"@_\n";	
}
sub average
{
	print"@_\n";
	$sum = 0;
	my $n = scalar(@_);	# local variable 
	foreach $val(@_)
	{
		$sum += $val;	
	}
	$average = $sum/$n;
	print"average value is $average\n";
	return $sum;
}
print" n value is $n\n";	# out of the scope 
sub sample4
{
	%hash = @_;
	foreach $key (keys %hash)
	{
		$values = $hash{$key};
		print"$key : $values ";
	}
	print"\n";
}

$string = "hello world";
sub printhello
{
	#my $string = "In the loop";
	local $string ; 
	$string="to print out side the loop";
	printstring();
	print"locally-$string\n";
	print"welcome, Hello\n";
}
sub printstring
{
	print"inside the printstring function- $string\n";
}

printhello();
print"globally-$string\n";

print"\npassing single arguments : ";
sample1(10);

print"\npassing multiple arguments : ";
sample2(10,20,30);

@a = (1,2,3,4);
print"\npassing array as an argument : ";
sample3(@a);

print"\npassing array and scalar values as an arguments\n";
$sum=average(4,5,@a,1);

print"returning values\n";
print"sum of the passing arguments is $sum\n";


print"\npassing hashes as an arguments\n";
%hash = ("roshini"=>7,'vinay'=>5,'kalyan',6);
sample4(%hash);