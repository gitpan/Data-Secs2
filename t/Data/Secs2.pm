#!perl
#
# The copyright notice and plain old documentation (POD)
# are at the end of this file.
#
package  t::Data::Secs2;

use strict;
use warnings;
use warnings::register;

use vars qw($VERSION $DATE $FILE );
$VERSION = '0.01';
$DATE = '2003/09/18';
$FILE = __FILE__;

########
# The Test::STDmaker module uses the data after the __DATA__ 
# token to automatically generate the this file.
#
# Don't edit anything before __DATA_. Edit instead
# the data after the __DATA__ token.
#
# ANY CHANGES MADE BEFORE the  __DATA__ token WILL BE LOST
#
# the next time Test::STDmaker generates this file.
#
#


=head1 TITLE PAGE

 Detailed Software Test Description (STD)

 for

 Perl Data::Secs2 Program Module

 Revision: -

 Version: 

 Date: 2003/09/18

 Prepared for: General Public 

 Prepared by:  http://www.SoftwareDiamonds.com support@SoftwareDiamonds.com

 Classification: None

=head1 SCOPE

This detail STD and the 
L<General Perl Program Module (PM) STD|Test::STD::PerlSTD>
establishes the tests to verify the
requirements of Perl Program Module (PM) L<Data::Secs2|Data::Secs2>

The format of this STD is a tailored L<2167A STD DID|Docs::US_DOD::STD>.
in accordance with 
L<Detail STD Format|Test::STDmaker/Detail STD Format>.

#######
#  
#  4. TEST DESCRIPTIONS
#
#  4.1 Test 001
#
#  ..
#
#  4.x Test x
#
#

=head1 TEST DESCRIPTIONS

The test descriptions uses a legend to
identify different aspects of a test description
in accordance with
L<STD FormDB Test Description Fields|Test::STDmaker/STD FormDB Test Description Fields>.

=head2 Test Plan

 T: 9^

=head2 ok: 1


  C:
     use File::Package;
     my $fp = 'File::Package';
     use Data::Secs2 qw(list2str);
     my $uut = 'Data::Secs2';
     my $loaded;
 ^
 VO: ^
  N: UUT loaded as Part of Test::Tech^
  A: $loaded = $fp->is_package_loaded($uut)^
 SE:  '1'^
 ok: 1^

=head2 ok: 2

  N: stringify scalar string^
  C: $uut->import( 'stringify' )^
  A: stringify( 'string' )^
  E: 'string'^
 ok: 2^

=head2 ok: 3

  N: stringify scalar number^
  A: stringify( 2 )^
  E: 2^
 ok: 3^

=head2 ok: 4

  N: stringify array^
  A: stringify( '2', 'hello', 4 )^
  E: list2str (['A', 2, 'A', 'hello', 'A', 4 ])^
 ok: 4^

=head2 ok: 5

  N: stringify an array reference^
  A: stringify( ['2', 'hello', 4] )^
  E: list2str (['L', 5, 'A', '', 'A', 'ARRAY', 'A', '2', 'A', 'hello', 'A', 4 ])^
 ok: 5^

=head2 ok: 6

  N: stringify a hash reference^
  A: stringify( {header => 'To: world', body => 'hello'})^

  E:
     list2str (
         [ 'L', 6, 'A', '', 'A', 'HASH', 
               'A', 'body', 'A', 'hello', 
               'A', 'header', 'A', 'To: world'
         ])
 ^
 ok: 6^

=head2 ok: 7

  N: stringify array with an array ref^
  A: stringify( '2', ['hello', 'world'], 4 )^

  E:
     list2str(
         [ 'A', '2', 
           'L', 4, 'A', '', 'A', 'ARRAY', 
               'A', 'hello', 
               'A', 'world', 
           'A', 4 ])
 ^
 ok: 7^

=head2 ok: 8

  N: stringify array with nested hashes, arrays, objects^
  C: my $obj = bless { To => 'nobody', From => 'nobody'}, 'Class::None'^
  A: stringify( '2', { msg => ['hello', 'world'] , header => $obj } )^

  E:
      list2str ( [ 
          'A', '2',
          'L', 6, 'A', '', 'A', 'HASH',
              'A', 'header', 
              'L', 6, 'A', 'Class::None', 'A', 'HASH',
                  'A', 'From', 'A', 'nobody', 
                  'A', 'To', 'A', 'nobody',
              'A', 'msg', 
              'L', 4, 'A', '', 'A', 'ARRAY', 
                  'A', 'hello', 
                  'A', 'world',
      ])
 ^
 ok: 8^

=head2 ok: 9

  N: stringify array with nested hashes, arrays, common object^

  A:
 stringify( { msg => ['hello', 'world'] , header => $obj }, 
                {msg => [ 'body' ], header => $obj} )
 ^

  E:
     list2str (
          [ 
              'L', 6, 'A', '', 'A', 'HASH',
                  'A', 'header',
                  'L', 6, 'A', 'Class::None', 'A', 'HASH',
                      'A', 'From', 'A', 'nobody', 'A', 'To', 'A', 'nobody',
                  'A', 'msg',
                  'L', 4, 'A', '', 'A', 'ARRAY',
                      'A', 'hello',
                      'A', 'world',
              'L', 6, 'A', '', 'A', 'HASH',
                  'A', 'header',
                  'L', 2, 'A', 'Index', 'U4', 2, 0, 3,
                  'A', 'msg',
                  'L', 3, 'A', '', 'A', 'ARRAY',
                      'A', 'body',
          ] )
 ^
 ok: 9^



#######
#  
#  5. REQUIREMENTS TRACEABILITY
#
#

=head1 REQUIREMENTS TRACEABILITY

  Requirement                                                      Test
 ---------------------------------------------------------------- ----------------------------------------------------------------


  Test                                                             Requirement
 ---------------------------------------------------------------- ----------------------------------------------------------------


=cut

#######
#  
#  6. NOTES
#
#

=head1 NOTES

copyright © 2003 Software Diamonds.

Software Diamonds permits the redistribution
and use in source and binary forms, with or
without modification, provided that the 
following conditions are met: 

=over 4

=item 1

Redistributions of source code, modified or unmodified
must retain the above copyright notice, this list of
conditions and the following disclaimer. 

=item 2

Redistributions in binary form must 
reproduce the above copyright notice,
this list of conditions and the following 
disclaimer in the documentation and/or
other materials provided with the
distribution.

=back

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

#######
#
#  2. REFERENCED DOCUMENTS
#
#
#

=head1 SEE ALSO



=back

=for html
<hr>
<p><br>
<!-- BLK ID="NOTICE" -->
<!-- /BLK -->
<p><br>
<!-- BLK ID="OPT-IN" -->
<!-- /BLK -->
<p><br>
<!-- BLK ID="EMAIL" -->
<!-- /BLK -->
<p><br>
<!-- BLK ID="LOG_CGI" -->
<!-- /BLK -->
<p><br>

=cut

__DATA__

File_Spec: Unix^
UUT: Data::Secs2^
Revision: -^
End_User: General Public^
Author: http://www.SoftwareDiamonds.com support@SoftwareDiamonds.com^
Detail_Template: ^
STD2167_Template: ^
Version: ^
Classification: None^
Temp: temp.pl^
Demo: Secs2.d^
Verify: Secs2.t^


 T: 9^


 C:
    use File::Package;
    my $fp = 'File::Package';

    use Data::Secs2 qw(list2str);

    my $uut = 'Data::Secs2';
    my $loaded;
^

VO: ^
 N: UUT loaded as Part of Test::Tech^
 A: $loaded = $fp->is_package_loaded($uut)^
SE:  '1'^
ok: 1^

 N: stringify scalar string^
 C: $uut->import( 'stringify' )^
 A: stringify( 'string' )^
 E: 'string'^
ok: 2^

 N: stringify scalar number^
 A: stringify( 2 )^
 E: 2^
ok: 3^

 N: stringify array^
 A: stringify( '2', 'hello', 4 )^
 E: list2str (['A', 2, 'A', 'hello', 'A', 4 ])^
ok: 4^

 N: stringify an array reference^
 A: stringify( ['2', 'hello', 4] )^
 E: list2str (['L', 5, 'A', '', 'A', 'ARRAY', 'A', '2', 'A', 'hello', 'A', 4 ])^
ok: 5^

 N: stringify a hash reference^
 A: stringify( {header => 'To: world', body => 'hello'})^

 E:
    list2str (
        [ 'L', 6, 'A', '', 'A', 'HASH', 
              'A', 'body', 'A', 'hello', 
              'A', 'header', 'A', 'To: world'
        ])
^

ok: 6^

 N: stringify array with an array ref^
 A: stringify( '2', ['hello', 'world'], 4 )^

 E:
    list2str(
        [ 'A', '2', 
          'L', 4, 'A', '', 'A', 'ARRAY', 
              'A', 'hello', 
              'A', 'world', 
          'A', 4 ])
^

ok: 7^

 N: stringify array with nested hashes, arrays, objects^
 C: my $obj = bless { To => 'nobody', From => 'nobody'}, 'Class::None'^
 A: stringify( '2', { msg => ['hello', 'world'] , header => $obj } )^

 E:
     list2str ( [ 
         'A', '2',
         'L', 6, 'A', '', 'A', 'HASH',
             'A', 'header', 
             'L', 6, 'A', 'Class::None', 'A', 'HASH',
                 'A', 'From', 'A', 'nobody', 
                 'A', 'To', 'A', 'nobody',
             'A', 'msg', 
             'L', 4, 'A', '', 'A', 'ARRAY', 
                 'A', 'hello', 
                 'A', 'world',
     ])
^

ok: 8^

 N: stringify array with nested hashes, arrays, common object^

 A:
stringify( { msg => ['hello', 'world'] , header => $obj }, 
               {msg => [ 'body' ], header => $obj} )
^


 E:
    list2str (
         [ 
             'L', 6, 'A', '', 'A', 'HASH',
                 'A', 'header',
                 'L', 6, 'A', 'Class::None', 'A', 'HASH',
                     'A', 'From', 'A', 'nobody', 'A', 'To', 'A', 'nobody',
                 'A', 'msg',
                 'L', 4, 'A', '', 'A', 'ARRAY',
                     'A', 'hello',
                     'A', 'world',
             'L', 6, 'A', '', 'A', 'HASH',
                 'A', 'header',
                 'L', 2, 'A', 'Index', 'U4', 2, 0, 3,
                 'A', 'msg',
                 'L', 3, 'A', '', 'A', 'ARRAY',
                     'A', 'body',
         ] )
^

ok: 9^


See_Also: ^

Copyright:
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
^


HTML:
<hr>
<p><br>
<!-- BLK ID="NOTICE" -->
<!-- /BLK -->
<p><br>
<!-- BLK ID="OPT-IN" -->
<!-- /BLK -->
<p><br>
<!-- BLK ID="EMAIL" -->
<!-- /BLK -->
<p><br>
<!-- BLK ID="LOG_CGI" -->
<!-- /BLK -->
<p><br>
^



~-~
