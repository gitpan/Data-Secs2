#!perl
#
#
use 5.001;
use strict;
use warnings;
use warnings::register;

use vars qw($VERSION $DATE);
$VERSION = '0.02';   # automatically generated file
$DATE = '2004/04/13';


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
    use Test::Tech qw(tech_config plan demo skip_tests);

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
\ \ \ \ use\ Data\:\:Secs2\ qw\(arrayify\ itemify\ listify\ neuterify\ scalarize\ secsify\ \
\ \ \ \ \ \ \ \ stringify\ \ transify\ vectorize\)\;\
\
\ \ \ \ my\ \$uut\ \=\ \'Data\:\:Secs2\'\;\
\ \ \ \ my\ \$loaded\;"); # typed in command           
          use File::Package;
    my $fp = 'File::Package';

    use Data::Secs2 qw(arrayify itemify listify neuterify scalarize secsify 
        stringify  transify vectorize);

    my $uut = 'Data::Secs2';
    my $loaded;; # execution

demo( "\$uut\-\>import\(\ \'stringify\'\ \)"); # typed in command           
      $uut->import( 'stringify' ); # execution

demo( "stringify\(\ \'string\'\ \)", # typed in command           
      stringify( 'string' )); # execution


demo( "stringify\(\ 2\ \)", # typed in command           
      stringify( 2 )); # execution


demo( "stringify\(\ \'2\'\,\ \'hello\'\,\ 4\ \)", # typed in command           
      stringify( '2', 'hello', 4 )); # execution


demo( "stringify\(\ \[\'2\'\,\ \'hello\'\,\ 4\]\ \)", # typed in command           
      stringify( ['2', 'hello', 4] )); # execution


demo( "stringify\(\ \{header\ \=\>\ \'To\:\ world\'\,\ body\ \=\>\ \'hello\'\}\)", # typed in command           
      stringify( {header => 'To: world', body => 'hello'})); # execution


demo( "secsify\(\ listify\(\ \[\'2\'\,\ \'hello\'\,\ 4\]\ \)\ \)", # typed in command           
      secsify( listify( ['2', 'hello', 4] ) )); # execution


demo( "secsify\(\ listify\(\ \{header\ \=\>\ \'To\:\ world\'\,\ body\ \=\>\ \'hello\'\}\)\ \)", # typed in command           
      secsify( listify( {header => 'To: world', body => 'hello'}) )); # execution


demo( "secsify\(\ listify\(\ \'2\'\,\ \[\'hello\'\,\ \'world\'\]\,\ 512\ \)\ \)", # typed in command           
      secsify( listify( '2', ['hello', 'world'], 512 ) )); # execution


demo( "my\ \$obj\ \=\ bless\ \{\ To\ \=\>\ \'nobody\'\,\ From\ \=\>\ \'nobody\'\}\,\ \'Class\:\:None\'"); # typed in command           
      my $obj = bless { To => 'nobody', From => 'nobody'}, 'Class::None'; # execution

demo( "secsify\(\ listify\(\ \'2\'\,\ \{\ msg\ \=\>\ \[\'hello\'\,\ \'world\'\]\ \,\ header\ \=\>\ \$obj\ \}\ \)\ \)", # typed in command           
      secsify( listify( '2', { msg => ['hello', 'world'] , header => $obj } ) )); # execution


demo( "secsify\(\ listify\(\ \{msg\ \=\>\ \[\'hello\'\,\ \'world\'\]\ \,\ header\ \=\>\ \$obj\ \}\,\ \
\ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \{msg\ \=\>\ \[\ \'body\'\ \]\,\ header\ \=\>\ \$obj\}\ \)\ \)", # typed in command           
      secsify( listify( {msg => ['hello', 'world'] , header => $obj }, 
               {msg => [ 'body' ], header => $obj} ) )); # execution


demo( "my\ \$big_secs2\ \=\ unpack\(\'H\*\'\,secsify\(\ listify\(\ \[\'2\'\,\ \'hello\'\,\ 4\]\ \)\,\ \{type\ \=\>\ \'binary\'\}\)\)", # typed in command           
      my $big_secs2 = unpack('H*',secsify( listify( ['2', 'hello', 4] ), {type => 'binary'}))); # execution


demo( "secsify\(neuterify\ \(pack\(\'H\*\'\,\$big_secs2\)\)\)", # typed in command           
      secsify(neuterify (pack('H*',$big_secs2)))); # execution


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
\ \ L\[2\]\ A\ \\\'Index\\\'\ U1\ 2\ 0\ 3\
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
  L[2] A \'Index\' U1 2 0 3
  A  \'msg\'
  L < A[0] A \'ARRAY\' A  \'body\' >
)

'; # execution

demo( "my\ \$list\ \=\ transify\ \(\$ascii_secsii\,\ format_code\ \=\>\ \'P\'\)\;"); # typed in command           
      my $list = transify ($ascii_secsii, format_code => 'P');; # execution

demo( "ref\(\$list\)", # typed in command           
      ref($list)); # execution


demo( "ref\(\$list\)\ \?\ secsify\(\ \$list\ \)\ \:\ \'\'", # typed in command           
      ref($list) ? secsify( $list ) : ''); # execution


demo( "ref\(my\ \$number_list\ \=\ listify\(\ \[\ \[78\,45\,25\]\,\ \[512\,1024\]\,\ 100000\]\ \)\)", # typed in command           
      ref(my $number_list = listify( [ [78,45,25], [512,1024], 100000] ))); # execution


demo( "secsify\(\$number_list\)", # typed in command           
      secsify($number_list)); # execution


demo( "vectorize\(\$number_list\)", # typed in command           
      vectorize($number_list)); # execution


demo( "\[\@\{\$number_list\-\>\[9\]\}\]", # typed in command           
      [@{$number_list->[9]}]); # execution


demo( "\[\@\{\$number_list\-\>\[11\]\}\]", # typed in command           
      [@{$number_list->[11]}]); # execution


demo( "\[\@\{\$number_list\-\>\[13\]\}\]", # typed in command           
      [@{$number_list->[13]}]); # execution


demo( "scalarize\(\$number_list\)", # typed in command           
      scalarize($number_list)); # execution


demo( "unpack\(\'H\*\'\,\ \$number_list\-\>\[9\]\)", # typed in command           
      unpack('H*', $number_list->[9])); # execution


demo( "unpack\(\'H\*\'\,\ \$number_list\-\>\[11\]\)", # typed in command           
      unpack('H*', $number_list->[11])); # execution


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

