package ModuleTemplate;
#
#===============================================================================
#
#         FILE:  a_perl_script_template.pl
#
#        USAGE:  ./a_perl_script_template.pl
#
#  DESCRIPTION:
#
#      OPTIONS:  ---
# REQUIREMENTS:  ---
#         BUGS:  ---
#        NOTES:  ---
#       AUTHOR:  Santosh Yadav (SY), ysantosh@yahoo.co.in
#      COMPANY:  XYZ
#      VERSION:  1.0
#      CREATED:  08/13/2015 12:46:23
#     REVISION:  ---
#===============================================================================
use strict;
use warnings;
###########################
# Some useful Perl modules
###########################
use Carp;                         # show your call stack
use Getopt::Long;                 # Getopt Long is a standard way to get options
use Pod::Usage;                   # Using SYNOPSIS perldoc as usage
use FindBin qw($Bin);             # you can use $Bin in your script to know your current directory
use English '-no_match_vars';     # $$ to $PID like converatoin
#use Log::Log4perl qw(:easy);      # log4j style log
use Data::Dumper qw( Dumper );    # print Dumper reference print Dumper($var)

# Module implementation here
=head1 FUNCTIONS 

=head2 new 

The default new method 
 
=cut

sub new {
    my($class, %options) = @_;
 
    my $self = {                   
        %options,                  
    };                             
 
    bless $self, $class;           
}

1; # Magic true value required at end of module


=head1 NAME

ModuleTemplate 


=head1 VERSION

This document describes ModuleTemplate version 0.0.1


=head1 SYNOPSIS

    use ModuleTemplate;

