#!perl
#
#
use 5.001;
use strict;
use warnings;
use warnings::register;

use vars qw($VERSION $DATE $FILE);
$VERSION = '0.03';   # automatically generated file
$DATE = '2004/04/13';
$FILE = __FILE__;


##### Test Script ####
#
# Name: Secs2.t
#
# UUT: Data::Secs2
#
# The module Test::STDmaker generated this test script from the contents of
#
# t::Data::Secs2;
#
# Don't edit this test script file, edit instead
#
# t::Data::Secs2;
#
#	ANY CHANGES MADE HERE TO THIS SCRIPT FILE WILL BE LOST
#
#       the next time Test::STDmaker generates this script file.
#
#

######
#
# T:
#
# use a BEGIN block so we print our plan before Module Under Test is loaded
#
BEGIN { 

   use FindBin;
   use File::Spec;
   use Cwd;

   ########
   # The working directory for this script file is the directory where
   # the test script resides. Thus, any relative files written or read
   # by this test script are located relative to this test script.
   #
   use vars qw( $__restore_dir__ );
   $__restore_dir__ = cwd();
   my ($vol, $dirs) = File::Spec->splitpath($FindBin::Bin,'nofile');
   chdir $vol if $vol;
   chdir $dirs if $dirs;

   #######
   # Pick up any testing program modules off this test script.
   #
   # When testing on a target site before installation, place any test
   # program modules that should not be installed in the same directory
   # as this test script. Likewise, when testing on a host with a @INC
   # restricted to just raw Perl distribution, place any test program
   # modules in the same directory as this test script.
   #
   use lib $FindBin::Bin;

   ########
   # Using Test::Tech, a very light layer over the module "Test" to
   # conduct the tests.  The big feature of the "Test::Tech: module
   # is that it takes expected and actual references and stringify
   # them by using "Data::Secs2" before passing them to the "&Test::ok"
   # Thus, almost any time of Perl data structures may be
   # compared by passing a reference to them to Test::Tech::ok
   #
   # Create the test plan by supplying the number of tests
   # and the todo tests
   #
   require Test::Tech;
   Test::Tech->import( qw(plan ok skip skip_tests tech_config finish) );
   plan(tests => 26);

}


END {
 
   #########
   # Restore working directory and @INC back to when enter script
   #
   @INC = @lib::ORIG_INC;
   chdir $__restore_dir__;
}


=head1 comment_out

###
# Have been problems with debugger with trapping CARP
#

####
# Poor man's eval where the test script traps off the Carp::croak 
# Carp::confess functions.
#
# The Perl authorities have Core::die locked down tight so
# it is next to impossible to trap off of Core::die. Lucky 
# must everyone uses Carp to die instead of just dieing.
#
use Carp;
use vars qw($restore_croak $croak_die_error $restore_confess $confess_die_error);
$restore_croak = \&Carp::croak;
$croak_die_error = '';
$restore_confess = \&Carp::confess;
$confess_die_error = '';
no warnings;
*Carp::croak = sub {
   $croak_die_error = '# Test Script Croak. ' . (join '', @_);
   $croak_die_error .= Carp::longmess (join '', @_);
   $croak_die_error =~ s/\n/\n#/g;
       goto CARP_DIE; # once croak can not continue
};
*Carp::confess = sub {
   $confess_die_error = '# Test Script Confess. ' . (join '', @_);
   $confess_die_error .= Carp::longmess (join '', @_);
   $confess_die_error =~ s/\n/\n#/g;
       goto CARP_DIE; # once confess can not continue

};
use warnings;
=cut


   # Perl code from C:
    use File::Package;
    my $fp = 'File::Package';

    use Data::Secs2 qw(arrayify itemify listify neuterify scalarize secsify 
        stringify  transify vectorize);

    my $uut = 'Data::Secs2';
    my $loaded;

skip_tests( 1 ) unless ok(
      $loaded = $fp->is_package_loaded($uut), # actual results
       '1', # expected results
      "",
      "UUT loaded as Part of Test::Tech"); 

#  ok:  1

   # Perl code from C:
$uut->import( 'stringify' );

ok(  stringify( 'string' ), # actual results
     'string', # expected results
     "",
     "stringify a scalar string");

#  ok:  2

ok(  stringify( 2 ), # actual results
     2, # expected results
     "",
     "stringify a scalar number");

#  ok:  3

ok(  stringify( '2', 'hello', 4 ), # actual results
     'U1[1] 80
U1[1] 2
A[5] hello
U1[1] 4
', # expected results
     "",
     "stringify an array");

#  ok:  4

ok(  stringify( ['2', 'hello', 4] ), # actual results
     'U1[1] 80
L[5]
  A[0]
  A[5] ARRAY
  U1[1] 2
  A[5] hello
  U1[1] 4
', # expected results
     "",
     "stringify an array reference");

#  ok:  5

ok(  stringify( {header => 'To: world', body => 'hello'}), # actual results
     'U1[1] 80
L[6]
  A[0]
  A[4] HASH
  A[4] body
  A[5] hello
  A[6] header
  A[9] To: world
', # expected results
     "",
     "stringify a hash reference");

#  ok:  6

ok(  secsify( listify( ['2', 'hello', 4] ) ), # actual results
     'U1[1] 80
L[5]
  A[0]
  A[5] ARRAY
  U1[1] 2
  A[5] hello
  U1[1] 4
', # expected results
     "",
     "ascii secsify an array reference");

#  ok:  7

ok(  secsify( listify( {header => 'To: world', body => 'hello'}) ), # actual results
     'U1[1] 80
L[6]
  A[0]
  A[4] HASH
  A[4] body
  A[5] hello
  A[6] header
  A[9] To: world
', # expected results
     "",
     "ascii secsify a hash reference");

#  ok:  8

ok(  secsify( listify( '2', ['hello', 'world'], 512 ) ), # actual results
     'U1[1] 80
U1[1] 2
L[4]
  A[0]
  A[5] ARRAY
  A[5] hello
  A[5] world
U2[1] 512
', # expected results
     "",
     "ascii secsify array with an array ref");

#  ok:  9

   # Perl code from C:
my $obj = bless { To => 'nobody', From => 'nobody'}, 'Class::None';

ok(  secsify( listify( '2', { msg => ['hello', 'world'] , header => $obj } ) ), # actual results
     'U1[1] 80
U1[1] 2
L[6]
  A[0]
  A[4] HASH
  A[6] header
  L[6]
    A[11] Class::None
    A[4] HASH
    A[4] From
    A[6] nobody
    A[2] To
    A[6] nobody
  A[3] msg
  L[4]
    A[0]
    A[5] ARRAY
    A[5] hello
    A[5] world
', # expected results
     "",
     "ascii secsify array with nested hashes, arrays, objects");

#  ok:  10

ok(  secsify( listify( {msg => ['hello', 'world'] , header => $obj }, 
               {msg => [ 'body' ], header => $obj} ) ), # actual results
     'U1[1] 80
L[6]
  A[0]
  A[4] HASH
  A[6] header
  L[6]
    A[11] Class::None
    A[4] HASH
    A[4] From
    A[6] nobody
    A[2] To
    A[6] nobody
  A[3] msg
  L[4]
    A[0]
    A[5] ARRAY
    A[5] hello
    A[5] world
L[6]
  A[0]
  A[4] HASH
  A[6] header
  L[2]
    A[5] Index
    U1[3] 2 0 3
  A[3] msg
  L[3]
    A[0]
    A[5] ARRAY
    A[4] body
', # expected results
     "",
     "ascii secsify ref to a hash with nested hashes, arrays, common objects");

#  ok:  11

ok(  my $big_secs2 = unpack('H*',secsify( listify( ['2', 'hello', 4] ), {type => 'binary'})), # actual results
     'a50150010541004105' . unpack('H*','ARRAY') . 'a501024105' . unpack('H*','hello') . 'a50104', # expected results
     "",
     "binary secsify an array reference");

#  ok:  12

   # Perl code from C:
$big_secs2 = 
'a501' . '50' .                       # U1[1] 80  Perl format code 
'a501' . '02' .                       # U1[1] 2
'0106' .                              # L[6]
'4100' .                              #   A[0]
'4104' . unpack('H*','HASH') .        #   A[4] HASH
'4106' . unpack('H*','header') .      #   A[6] header
'0106' .                              #   L[6]
'410b' . unpack('H*','Class::None') . #     A[11] Class::None
'4104' . unpack('H*','HASH') .        #     A[4] HASH
'4104' . unpack('H*','From') .        #     A[4] From
'4106' . unpack('H*','nobody') .      #     A[6] nobody
'4102' . unpack('H*','To') .          #     A[2] To
'4106' . unpack('H*','nobody') .      #     A[6] nobody
'4103' . unpack('H*','msg') .         #   A[3] msg
'0104' .                              #   L[4]
'4100' .                              #     A[0]
'4105' . unpack('H*','ARRAY') .       #     A[5] ARRAY
'4105' . unpack('H*','hello') .       #     A[5] hello 
'4105' . unpack('H*','world');        #     A[5] world;

ok(  unpack('H*',
        secsify( listify( '2', { msg => ['hello', 'world'] , header => $obj } ), 
                 {type => 'binary'})
   ), # actual results
     $big_secs2, # expected results
     "",
     "binary secsify array with nested hashes, arrays, objects");

#  ok:  13

ok(  secsify(neuterify (pack('H*',$big_secs2))), # actual results
     'U1[1] 80
U1[1] 2
L[6]
  A[0]
  A[4] HASH
  A[6] header
  L[6]
    A[11] Class::None
    A[4] HASH
    A[4] From
    A[6] nobody
    A[2] To
    A[6] nobody
  A[3] msg
  L[4]
    A[0]
    A[5] ARRAY
    A[5] hello
    A[5] world
', # expected results
     "",
     "neuterify a big secsii");

#  ok:  14

   # Perl code from C:
    my $ascii_secsii =
'
L
(
  A \'\' A \'HASH\' A \'header\'
  L [ A "Class::None"  A "HASH" 
      A  "From" A "nobody"
      A  "To" A "nobody"
    ]
  A "msg"
  L,4 A[0] A[5] ARRAY
    A  "hello" A "world"
)

L 
(
  A[0] A "HASH"  A /header/
  L[2] A \'Index\' U1 2 0 3
  A  \'msg\'
  L < A[0] A \'ARRAY\' A  \'body\' >
)

';

   # Perl code from C:
my $list = transify ($ascii_secsii, format_code => 'P');

skip_tests( 1 ) unless ok(
      ref($list), # actual results
      'ARRAY', # expected results
      "$list",
      "transify a free for all secsii input"); 

#  ok:  15

ok(  ref($list) ? secsify( $list ) : '', # actual results
     'U1[1] 80
L[6]
  A[0]
  A[4] HASH
  A[6] header
  L[6]
    A[11] Class::None
    A[4] HASH
    A[4] From
    A[6] nobody
    A[2] To
    A[6] nobody
  A[3] msg
  L[4]
    A[0]
    A[5] ARRAY
    A[5] hello
    A[5] world
L[6]
  A[0]
  A[4] HASH
  A[6] header
  L[2]
    A[5] Index
    U1[3] 2 0 3
  A[3] msg
  L[3]
    A[0]
    A[5] ARRAY
    A[4] body
', # expected results
     "",
     "secsify transifed free style secs text");

#  ok:  16

ok(  ref(my $number_list = listify( [ [78,45,25], [512,1024], 100000] )), # actual results
     'ARRAY', # expected results
     "",
     "listify a list of number arrays");

#  ok:  17

ok(  secsify($number_list), # actual results
     'U1[1] 80
L[5]
  A[0]
  A[5] ARRAY
  U1[3] 78 45 25
  U2[2] 512 1024
  U4[1] 100000
', # expected results
     "",
     "secify a listified list of number arrays");

#  ok:  18

ok(  vectorize($number_list), # actual results
     '', # expected results
     "",
     "vectorize listified list of number arrays");

#  ok:  19

ok(  [@{$number_list->[9]}], # actual results
     [78,45,25], # expected results
     "",
     "verify 1st vectorized array");

#  ok:  20

ok(  [@{$number_list->[11]}], # actual results
     [512,1024], # expected results
     "",
     "verify 2nd vectorized array");

#  ok:  21

ok(  [@{$number_list->[13]}], # actual results
     [100000], # expected results
     "",
     "verify 3rd vectorized array");

#  ok:  22

ok(  scalarize($number_list), # actual results
     '', # expected results
     "",
     "scalarize listified list of number arrays");

#  ok:  23

ok(  unpack('H*', $number_list->[9]), # actual results
     '4e2d19', # expected results
     "",
     "verify 1st scalarized array");

#  ok:  24

ok(  unpack('H*', $number_list->[11]), # actual results
     '02000400', # expected results
     "",
     "verify 2nd scalarized array");

#  ok:  25

ok(  unpack('H*', $number_list->[13]), # actual results
     '000186a0', # expected results
     "",
     "verify 3rd scalarized array");

#  ok:  26


=head1 comment out

# does not work with debugger
CARP_DIE:
    if ($croak_die_error || $confess_die_error) {
        print $Test::TESTOUT = "not ok $Test::ntest\n";
        $Test::ntest++;
        print $Test::TESTERR $croak_die_error . $confess_die_error;
        $croak_die_error = '';
        $confess_die_error = '';
        skip_tests(1, 'Test invalid because of Carp die.');
    }
    no warnings;
    *Carp::croak = $restore_croak;    
    *Carp::confess = $restore_confess;
    use warnings;
=cut

    finish();

__END__

=head1 NAME

Secs2.t - test script for Data::Secs2

=head1 SYNOPSIS

 Secs2.t -log=I<string>

=head1 OPTIONS

All options may be abbreviated with enough leading characters
to distinguish it from the other options.

=over 4

=item C<-log>

Secs2.t uses this option to redirect the test results 
from the standard output to a log file.

=back

=head1 COPYRIGHT

copyright © 2003 Software Diamonds.

Software Diamonds permits the redistribution
and use in source and binary forms, with or
without modification, provided that the 
following conditions are met: 

\=over 4

\=item 1

Redistributions of source code, modified or unmodified
must retain the above copyright notice, this list of
conditions and the following disclaimer. 

\=item 2

Redistributions in binary form must 
reproduce the above copyright notice,
this list of conditions and the following 
disclaimer in the documentation and/or
other materials provided with the
distribution.

\=back

SOFTWARE DIAMONDS, http://www.SoftwareDiamonds.com,
PROVIDES THIS SOFTWARE 
'AS IS' AND ANY EXPRESS OR IMPLIED WARRANTIES,
INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT
SHALL SOFTWARE DIAMONDS BE LIABLE FOR ANY DIRECT,
INDIRECT, INCIDENTAL, SPECIAL,EXEMPLARY, OR 
CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED
TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
LOSS OF USE,DATA, OR PROFITS; OR BUSINESS
INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY
OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
OR TORT (INCLUDING USE OF THIS SOFTWARE, EVEN IF
ADVISED OF NEGLIGENCE OR OTHERWISE) ARISING IN
ANY WAY OUT OF THE POSSIBILITY OF SUCH DAMAGE.

=cut

## end of test script file ##

