#!perl
#
#
use 5.001;
use strict;
use warnings;
use warnings::register;

use vars qw($VERSION $DATE);
$VERSION = '0.04';   # automatically generated file
$DATE = '2004/04/25';


##### Demonstration Script ####
#
# Name: Secs2.d
#
# UUT: Data::Secs2
#
# The module Test::STDmaker generated this demo script from the contents of
#
# t::Data::Secs2 
#
# Don't edit this test script file, edit instead
#
# t::Data::Secs2
#
#	ANY CHANGES MADE HERE TO THIS SCRIPT FILE WILL BE LOST
#
#       the next time Test::STDmaker generates this script file.
#
#

######
#
# The working directory is the directory of the generated file
#
use vars qw($__restore_dir__ @__restore_inc__ );

BEGIN {
    use Cwd;
    use File::Spec;
    use FindBin;
    use Test::Tech qw(demo is_skip plan skip_tests tech_config );

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

    unshift @INC, File::Spec->catdir( cwd(), 'lib' ); 

}

END {

    #########
    # Restore working directory and @INC back to when enter script
    #
    @INC = @lib::ORIG_INC;
    chdir $__restore_dir__;

}

print << 'MSG';

 ~~~~~~ Demonstration overview ~~~~~
 
Perl code begins with the prompt

 =>

The selected results from executing the Perl Code 
follow on the next lines. For example,

 => 2 + 2
 4

 ~~~~~~ The demonstration follows ~~~~~

MSG

demo( "\ \ \ \ use\ File\:\:Package\;\
\ \ \ \ my\ \$fp\ \=\ \'File\:\:Package\'\;\
\
\ \ \ \ use\ Data\:\:Secs2\ qw\(arrayify\ config\ listify\ neuterify\ numberify\ perlify\ \
\ \ \ \ \ \ \ \ \ perl_typify\ secsify\ secs_elementify\ stringify\ textify\ transify\)\;\
\
\ \ \ \ my\ \$uut\ \=\ \'Data\:\:Secs2\'\;\
\ \ \ \ my\ \$loaded\;\
\
my\ \$test_data1\ \=\
\'U1\[1\]\ 80\
L\[5\]\
\ \ A\[0\]\
\ \ A\[5\]\ ARRAY\
\ \ U1\[1\]\ 2\
\ \ A\[5\]\ hello\
\ \ U1\[1\]\ 4\
\'\;\
\
my\ \$test_data2\ \=\
\'U1\[1\]\ 80\
L\[6\]\
\ \ A\[0\]\
\ \ A\[4\]\ HASH\
\ \ A\[4\]\ body\
\ \ A\[5\]\ hello\
\ \ A\[6\]\ header\
\ \ A\[9\]\ To\:\ world\
\'\;\
\
my\ \$test_data3\ \=\
\'U1\[1\]\ 80\
U1\[1\]\ 2\
L\[4\]\
\ \ A\[0\]\
\ \ A\[5\]\ ARRAY\
\ \ A\[5\]\ hello\
\ \ A\[5\]\ world\
U2\[1\]\ 512\
\'\;\
\
my\ \$test_data4\ \=\
\'U1\[1\]\ 80\
U1\[1\]\ 2\
L\[6\]\
\ \ A\[0\]\
\ \ A\[4\]\ HASH\
\ \ A\[6\]\ header\
\ \ L\[6\]\
\ \ \ \ A\[11\]\ Class\:\:None\
\ \ \ \ A\[4\]\ HASH\
\ \ \ \ A\[4\]\ From\
\ \ \ \ A\[6\]\ nobody\
\ \ \ \ A\[2\]\ To\
\ \ \ \ A\[6\]\ nobody\
\ \ A\[3\]\ msg\
\ \ L\[4\]\
\ \ \ \ A\[0\]\
\ \ \ \ A\[5\]\ ARRAY\
\ \ \ \ A\[5\]\ hello\
\ \ \ \ A\[5\]\ world\
\'\;\
\
my\ \$test_data5\ \=\
\'U1\[1\]\ 80\
L\[6\]\
\ \ A\[0\]\
\ \ A\[4\]\ HASH\
\ \ A\[6\]\ header\
\ \ L\[6\]\
\ \ \ \ A\[11\]\ Class\:\:None\
\ \ \ \ A\[4\]\ HASH\
\ \ \ \ A\[4\]\ From\
\ \ \ \ A\[6\]\ nobody\
\ \ \ \ A\[2\]\ To\
\ \ \ \ A\[6\]\ nobody\
\ \ A\[3\]\ msg\
\ \ L\[4\]\
\ \ \ \ A\[0\]\
\ \ \ \ A\[5\]\ ARRAY\
\ \ \ \ A\[5\]\ hello\
\ \ \ \ A\[5\]\ world\
L\[6\]\
\ \ A\[0\]\
\ \ A\[4\]\ HASH\
\ \ A\[6\]\ header\
\ \ L\[3\]\
\ \ \ \ A\[0\]\
\ \ \ \ A\[5\]\ Index\
\ \ \ \ U1\[1\]\ 10\
\ \ A\[3\]\ msg\
\ \ L\[3\]\
\ \ \ \ A\[0\]\
\ \ \ \ A\[5\]\ ARRAY\
\ \ \ \ A\[4\]\ body\
\'\;\
\
my\ \$test_data6\ \=\ \[\ \[78\,45\,25\]\,\ \[512\,1024\]\,\ 100000\ \]\;\
\
my\ \$test_data7\ \=\ \'a50150010541004105\'\ \.\ unpack\(\'H\*\'\,\'ARRAY\'\)\ \.\ \
\ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \'a5034e2d19\'\ \.\ \ \'a90402000400\'\ \.\ \'b104000186a0\'\;\
\
\#\#\#\#\#\#\#\
\#\ multicell\ numberics\,\ Perl\ Secs\ Object\
\#\
my\ \$test_data8\ \=\
\'U1\[1\]\ 80\
L\[5\]\
\ \ A\[0\]\
\ \ A\[5\]\ ARRAY\
\ \ U1\[3\]\ 78\ 45\ 25\
\ \ U2\[2\]\ 512\ 1024\
\ \ U4\[1\]\ 100000\
\'\;\
\
\
\#\#\#\#\#\#\#\
\#\ Strict\ Perl\ numberics\,\ Perl\ Secs\ Object\
\#\
my\ \$test_data9\ \=\
\'U1\[1\]\ 80\
L\[5\]\
\ \ A\[0\]\
\ \ A\[5\]\ ARRAY\
\ \ L\[5\]\
\ \ \ \ A\[0\]\
\ \ \ \ A\[5\]\ ARRAY\
\ \ \ \ U1\[1\]\ 78\
\ \ \ \ U1\[1\]\ 45\
\ \ \ \ U1\[1\]\ 25\
\ \ L\[4\]\
\ \ \ \ A\[0\]\
\ \ \ \ A\[5\]\ ARRAY\
\ \ \ \ U2\[1\]\ 512\
\ \ \ \ U2\[1\]\ 1024\
\ \ U4\[1\]\ 100000\
\'\;"); # typed in command           
          use File::Package;
    my $fp = 'File::Package';

    use Data::Secs2 qw(arrayify config listify neuterify numberify perlify 
         perl_typify secsify secs_elementify stringify textify transify);

    my $uut = 'Data::Secs2';
    my $loaded;

my $test_data1 =
'U1[1] 80
L[5]
  A[0]
  A[5] ARRAY
  U1[1] 2
  A[5] hello
  U1[1] 4
';

my $test_data2 =
'U1[1] 80
L[6]
  A[0]
  A[4] HASH
  A[4] body
  A[5] hello
  A[6] header
  A[9] To: world
';

my $test_data3 =
'U1[1] 80
U1[1] 2
L[4]
  A[0]
  A[5] ARRAY
  A[5] hello
  A[5] world
U2[1] 512
';

my $test_data4 =
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
';

my $test_data5 =
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
  L[3]
    A[0]
    A[5] Index
    U1[1] 10
  A[3] msg
  L[3]
    A[0]
    A[5] ARRAY
    A[4] body
';

my $test_data6 = [ [78,45,25], [512,1024], 100000 ];

my $test_data7 = 'a50150010541004105' . unpack('H*','ARRAY') . 
                 'a5034e2d19' .  'a90402000400' . 'b104000186a0';

#######
# multicell numberics, Perl Secs Object
#
my $test_data8 =
'U1[1] 80
L[5]
  A[0]
  A[5] ARRAY
  U1[3] 78 45 25
  U2[2] 512 1024
  U4[1] 100000
';


#######
# Strict Perl numberics, Perl Secs Object
#
my $test_data9 =
'U1[1] 80
L[5]
  A[0]
  A[5] ARRAY
  L[5]
    A[0]
    A[5] ARRAY
    U1[1] 78
    U1[1] 45
    U1[1] 25
  L[4]
    A[0]
    A[5] ARRAY
    U2[1] 512
    U2[1] 1024
  U4[1] 100000
';; # execution

print << 'EOF';

 => ##################
 => # stringify an array
 => # 
 => ###

EOF

demo( "stringify\(\ \'2\'\,\ \'hello\'\,\ 4\ \)", # typed in command           
      stringify( '2', 'hello', 4 )); # execution


print << 'EOF';

 => ##################
 => # stringify a hash reference
 => # 
 => ###

EOF

demo( "stringify\(\ \{header\ \=\>\ \'To\:\ world\'\,\ body\ \=\>\ \'hello\'\}\)", # typed in command           
      stringify( {header => 'To: world', body => 'hello'})); # execution


print << 'EOF';

 => ##################
 => # ascii secsify lisfication of test_data1 an array reference
 => # 
 => ###

EOF

demo( "secsify\(\ listify\(\ \[\'2\'\,\ \'hello\'\,\ 4\]\ \)\ \)", # typed in command           
      secsify( listify( ['2', 'hello', 4] ) )); # execution


print << 'EOF';

 => ##################
 => # ascii secsify lisfication of test_data3 - array with an array ref
 => # 
 => ###

EOF

demo( "secsify\(\ listify\(\ \'2\'\,\ \[\'hello\'\,\ \'world\'\]\,\ 512\ \)\ \)", # typed in command           
      secsify( listify( '2', ['hello', 'world'], 512 ) )); # execution


demo( "my\ \$obj\ \=\ bless\ \{\ To\ \=\>\ \'nobody\'\,\ From\ \=\>\ \'nobody\'\}\,\ \'Class\:\:None\'", # typed in command           
      my $obj = bless { To => 'nobody', From => 'nobody'}, 'Class::None'); # execution


print << 'EOF';

 => ##################
 => # ascii secsify lisfication of test_data5 - hash with nested hashes, arrays, common objects
 => # 
 => ###

EOF

demo( "\ \ \ \ secsify\(\ listify\(\ \{msg\ \=\>\ \[\'hello\'\,\ \'world\'\]\ \,\ header\ \=\>\ \$obj\ \}\,\ \
\ \ \ \ \ \{msg\ \=\>\ \[\ \'body\'\ \]\,\ header\ \=\>\ \$obj\}\ \)\ \)", # typed in command           
          secsify( listify( {msg => ['hello', 'world'] , header => $obj }, 
     {msg => [ 'body' ], header => $obj} ) )); # execution


print << 'EOF';

 => ##################
 => # ascii secsify listifcation perilification transfication of test_data4
 => # 
 => ###

EOF

demo( "secsify\(\ listify\(perlify\(\ transify\(\$test_data4\ \)\)\)\ \)", # typed in command           
      secsify( listify(perlify( transify($test_data4 ))) )); # execution


print << 'EOF';

 => ##################
 => # ascii secsify listifcation perilification transfication of test_data5
 => # 
 => ###

EOF

demo( "secsify\(\ listify\(perlify\(\ transify\(\$test_data5\)\)\)\ \)", # typed in command           
      secsify( listify(perlify( transify($test_data5))) )); # execution


print << 'EOF';

 => ##################
 => # binary secsify an array reference
 => # 
 => ###

EOF

demo( "my\ \$big_secs2\ \=\ unpack\(\'H\*\'\,secsify\(\ listify\(\ \[\'2\'\,\ \'hello\'\,\ 4\]\ \)\,\ \{type\ \=\>\ \'binary\'\}\)\)", # typed in command           
      my $big_secs2 = unpack('H*',secsify( listify( ['2', 'hello', 4] ), {type => 'binary'}))); # execution


print << 'EOF';

 => ##################
 => # binary secsify numeric arrays
 => # 
 => ###

EOF

demo( "\$big_secs2\ \=\ unpack\(\'H\*\'\,secsify\(\ listify\(\ \$test_data6\ \)\,\ \{type\ \=\>\ \'binary\'\}\)\)", # typed in command           
      $big_secs2 = unpack('H*',secsify( listify( $test_data6 ), {type => 'binary'}))); # execution


print << 'EOF';

 => ##################
 => # neuterify a big secsii
 => # 
 => ###

EOF

demo( "secsify\(neuterify\ \(pack\(\'H\*\'\,\$big_secs2\)\)\)", # typed in command           
      secsify(neuterify (pack('H*',$big_secs2)))); # execution


print << 'EOF';

 => ##################
 => # neuterify a multicell binary Perl SECS obj
 => # 
 => ###

EOF

demo( "secsify\(neuterify\ \(pack\(\'H\*\'\,\$test_data7\)\)\)", # typed in command           
      secsify(neuterify (pack('H*',$test_data7)))); # execution


print << 'EOF';

 => ##################
 => # transify a free for all secsii input
 => # 
 => ###

EOF

demo( "\ \ \ \ my\ \$ascii_secsii\ \=\
\'\
L\
\(\
\ \ A\ \\\'\\\'\ A\ \\\'HASH\\\'\ A\ \\\'header\\\'\
\ \ L\ \[\ A\ \"Class\:\:None\"\ \ A\ \"HASH\"\ \
\ \ \ \ \ \ A\ \ \"From\"\ A\ \"nobody\"\
\ \ \ \ \ \ A\ \ \"To\"\ A\ \"nobody\"\
\ \ \ \ \]\
\ \ A\ \"msg\"\
\ \ L\,4\ A\[0\]\ A\[5\]\ ARRAY\
\ \ \ \ A\ \ \"hello\"\ A\ \"world\"\
\)\
\
L\ \
\(\
\ \ A\[0\]\ A\ \"HASH\"\ \ A\ \/header\/\
\ \ L\[3\]\ A\[0\]\ A\ \\\'Index\\\'\ U1\ 10\
\ \ A\ \ \\\'msg\\\'\
\ \ L\ \<\ A\[0\]\ A\ \\\'ARRAY\\\'\ A\ \ \\\'body\\\'\ \>\
\)\
\
\'"); # typed in command           
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
  L[3] A[0] A \'Index\' U1 10
  A  \'msg\'
  L < A[0] A \'ARRAY\' A  \'body\' >
)

'; # execution

demo( "my\ \$list\ \=\ transify\ \(\$ascii_secsii\,\ obj_format_code\ \=\>\ \'P\'\)\;"); # typed in command           
      my $list = transify ($ascii_secsii, obj_format_code => 'P');; # execution

demo( "ref\(\$list\)", # typed in command           
      ref($list)); # execution


print << 'EOF';

 => ##################
 => # secsify transifed free style secs text
 => # 
 => ###

EOF

demo( "ref\(\$list\)\ \?\ secsify\(\ \$list\ \)\ \:\ \'\'", # typed in command           
      ref($list) ? secsify( $list ) : ''); # execution


print << 'EOF';

 => ##################
 => # strict Perl listify numberic arrays
 => # 
 => ###

EOF

demo( "ref\(my\ \$number_list\ \=\ Data\:\:Secs2\-\>new\(perl_secs_numbers\ \=\>\ \'strict\'\)\-\>listify\(\ \$test_data6\ \)\)", # typed in command           
      ref(my $number_list = Data::Secs2->new(perl_secs_numbers => 'strict')->listify( $test_data6 ))); # execution


print << 'EOF';

 => ##################
 => # secify strict Perl  listified numberic arrays
 => # 
 => ###

EOF

demo( "secsify\(\$number_list\)", # typed in command           
      secsify($number_list)); # execution


print << 'EOF';

 => ##################
 => # multicell listify numberic arrays
 => # 
 => ###

EOF

demo( "ref\(\$number_list\ \=\ listify\(\ \$test_data6\ \)\)", # typed in command           
      ref($number_list = listify( $test_data6 ))); # execution


print << 'EOF';

 => ##################
 => # secify multicell listified numberic arrays
 => # 
 => ###

EOF

demo( "secsify\(\$number_list\)", # typed in command           
      secsify($number_list)); # execution


print << 'EOF';

 => ##################
 => # read configuration
 => # 
 => ###

EOF

demo( "config\(\'perl_secs_numbers\'\)", # typed in command           
      config('perl_secs_numbers')); # execution


print << 'EOF';

 => ##################
 => # write configuration
 => # 
 => ###

EOF

demo( "config\(\'perl_secs_numbers\'\,\'strict\'\)", # typed in command           
      config('perl_secs_numbers','strict')); # execution


print << 'EOF';

 => ##################
 => # verifiy write configuration
 => # 
 => ###

EOF

demo( "config\(\'perl_secs_numbers\'\)", # typed in command           
      config('perl_secs_numbers')); # execution


print << 'EOF';

 => ##################
 => # restore configuration
 => # 
 => ###

EOF

demo( "config\(\'perl_secs_numbers\'\,\'multicell\'\)", # typed in command           
      config('perl_secs_numbers','multicell')); # execution


print << 'EOF';

 => ##################
 => # textify listified list of number arrays
 => # 
 => ###

EOF

demo( "textify\(\$number_list\)", # typed in command           
      textify($number_list)); # execution


print << 'EOF';

 => ##################
 => # verify 1st textified item element body
 => # 
 => ###

EOF

demo( "\[\@\{\$number_list\-\>\[9\]\}\]", # typed in command           
      [@{$number_list->[9]}]); # execution


print << 'EOF';

 => ##################
 => # verify 2nd textified item element body
 => # 
 => ###

EOF

demo( "\[\@\{\$number_list\-\>\[11\]\}\]", # typed in command           
      [@{$number_list->[11]}]); # execution


print << 'EOF';

 => ##################
 => # verify 3rd textified item element body
 => # 
 => ###

EOF

demo( "\[\@\{\$number_list\-\>\[13\]\}\]", # typed in command           
      [@{$number_list->[13]}]); # execution


print << 'EOF';

 => ##################
 => # numberify listified list of number arrays
 => # 
 => ###

EOF

demo( "numberify\(\$number_list\)", # typed in command           
      numberify($number_list)); # execution


print << 'EOF';

 => ##################
 => # verify 1st numberified item element body
 => # 
 => ###

EOF

demo( "unpack\(\'H\*\'\,\ \$number_list\-\>\[9\]\)", # typed in command           
      unpack('H*', $number_list->[9])); # execution


print << 'EOF';

 => ##################
 => # verify 2nd numberified item element body
 => # 
 => ###

EOF

demo( "unpack\(\'H\*\'\,\ \$number_list\-\>\[11\]\)", # typed in command           
      unpack('H*', $number_list->[11])); # execution


print << 'EOF';

 => ##################
 => # verify 3rd numberified item element body
 => # 
 => ###

EOF

demo( "unpack\(\'H\*\'\,\ \$number_list\-\>\[13\]\)", # typed in command           
      unpack('H*', $number_list->[13])); # execution



=head1 NAME

Secs2.d - demostration script for Data::Secs2

=head1 SYNOPSIS

 Secs2.d

=head1 OPTIONS

None.

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

## end of test script file ##

=cut

