#while loop
print"Accessing elements from arrays and hashes using while loop\n";

@a1 =('a',1,"abc");
%hash_stu =('roshini'=> 5, kalyan => 9, "vinay"=> 3,'farhana',2);
$arr_size = @a1;
@names = keys %hash_stu ;
@val = values %hash_stu ;
$hash_size=@names;
$i=0,$j=0;
#$ty=$a1[2];
loop:while( $i < $arr_size  ) 
{
  if($i==2)
{
  $i++;
  next loop;
}
   printf "Value of a: $a1[$i]\n";
   $i++;
}
print"\n";
while($j < $hash_size)
{
	#print" $names[$j] : $hash_stu{$names[$j]}\n";
	print" $names[$j] : $val[$j]\n";
	$j++;
}


#until loop
print"\n using until loop\n";
$k=0;
until($k>=$arr_size)
{
print"$a1[$k]\n";
$k++;
}


#for loop
print"\nAdding elements in an array using for loop\n";  
@a2 = (2,5,3,7,4,8);
$size = @a2;
$sum=0;
for($i=0;$i<$size;$i++)
{
	$sum = $sum + $a2[$i];
}
print " the sum of the elements in array is $sum\n";


#foreach loop
print"\n using foreach loop\n";
foreach $a (keys %hash_stu)
{
   
	print "value of a: $a\n";

}

#do-while loop
print"\n using do_while loop\n";
@arr = ("roshini","kalyan","farhana","vinay");
$i =0;
$size = @arr;
do
{

print " $arr[$i]\n";
$i++;
}while($i < $size);


#nested loops
print"\nbubble sorting using nested loop\n";

@unsorted_arr = (4, 2, 8, 5, 9, 3);
$size = @unsorted_arr;
$i=0;

while($i < $size)
{
	$j = $i+1;
	while($j < $size)
	{
		if($unsorted_arr[$j] < $unsorted_arr[$i])
		{
			$temp = $unsorted_arr[$i];
			$unsorted_arr[$i] = $unsorted_arr[$j];
			$unsorted_arr[$j] = $temp;
		}
	$j++;
	}
$i++;
}
print" sorted array is @unsorted_arr\n";
