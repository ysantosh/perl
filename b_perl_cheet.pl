#!/usr/local/bin/perl 
use strict;                                      # Warning become error          
use warnings;                                    # enable warning   
use Data::Dumper;                                # print Dumper($var) 
use Pod::Usage;
use Getopt::Long;

#Get user input 
my %opt;                                         # initialise %opt 
GetOptions( \%opt, 'query|q=s', 'help|?', 'man', 'file|f=s' );
pod2usage(1) if $opt{'help'};
pod2usage( -verbose => 2 ) if $opt{'man'};

$var1=10;
print "\nvar=$var1";
@arr1=("happy","Sad","boar");
#Another way of intializing an array
@days = qw(Mon Tue Wed Thu Fri Sat Sun); 
@month = qw(Jan Feb Mar Apr May Jun Jul Aug Sep Oct Nov Dec);
#Another way
@marks = (20 .. 30);
print @marks;
print @days;
#
#
#There are three way to print the content of array
#1:Print collectively using @arr
print "\nArray is @arr1" ; # Print array collectively
#2:Print using for loop
foreach $i (0..2) { print "\nArray is ".$arr1[$i]; }
foreach (@arr1) { print "\n$_";}
#3:Print using dumping : still searching 
$arr1[4]="hi";
foreach $i (0..4)
{ print "\nArray is ".$arr1[$i]; }
#
#get the length of array
print "\narray length of days is ".scalar(@days);
print "\narray length of days is ".@days;
$month = @month ; 
print "\narray length of month is  $month";
#
#Printing last element
print "\n".$days[-1];
print "\n".$days[$#days];
#
#push(@array, Element)    Adds to the end of an array
#pop(@array) Removes the last element of the array
#unshift(@array, Element)    Adds to the beginning of an array
#shift(@array)   Removes the first element of an array
#delete $array[index]    Removes an element by index number
push(@days,"error");
print"\n @days";
pop(@days);
print"\n @days";
unshift(@days,"error");
print"\n @days";
shift(@days);
print"\n @days";
#
#Some more useful functions are
#split('-',$astring) Return string
#
