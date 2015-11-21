#! /opt/local/bin/perl
# print number , if divisible by 4 then print only 4, divisible by 6 then
#print only 6 , if divisible by 4 and 6 then print both
use strict ;
use Data::Dumper;
foreach my $i (1..25)
{
  if (!($i % 4) && !($i % 6) )
  {
    print "\nboth";

  }
  elsif (!($i % 4) )
  {
    print "\nonly 4";

  }
  elsif (!($i % 6) )
  {
    print "\nonly 6";

  }
  else
  {
    print "\n$i";
  }
}
