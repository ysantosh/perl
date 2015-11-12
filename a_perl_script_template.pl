#!/usr/bin/perl
# invoke as ./a_perl_script_template.pl --help --name=hello --age=30
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

=head1 NAME

[script name]

=head1 SYNOPSIS

[script usage]

=head1 DESCRIPTION

[enter your description here]

=cut

main() unless caller();

=head1 FUNCTIONS

=head2 main

Main function to run the script so we can unit test

=cut

sub main {
  my %opts;
# init log4perl
# Log::Log4perl->easy_init($level);

  GetOptions(
    \%opts, 'help' , 'name=s' , 'age=i' , 'man' , 'file|f=s'
  );
  print Dumper(\%opts);
  pod2usage(1) if ( $opts{help} );
  pod2usage( -verbose => 2 ) if $opts{'man'};
}

__END__

=head1 SEE ALSO

[see also]

=head1 AUTHOR

[Your name is here]

=head1 LICENSE

XYZ company

=cut
