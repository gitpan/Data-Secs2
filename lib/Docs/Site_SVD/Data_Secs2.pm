#!perl
#
# The copyright notice and plain old documentation (POD)
# are at the end of this file.
#
package  Docs::Site_SVD::Data_Secs2;

use strict;
use warnings;
use warnings::register;

use vars qw($VERSION $DATE $FILE );
$VERSION = '0.05';
$DATE = '2004/04/25';
$FILE = __FILE__;

use vars qw(%INVENTORY);
%INVENTORY = (
    'lib/Docs/Site_SVD/Data_Secs2.pm' => [qw(0.05 2004/04/25), 'revised 0.04'],
    'MANIFEST' => [qw(0.05 2004/04/25), 'generated, replaces 0.04'],
    'Makefile.PL' => [qw(0.05 2004/04/25), 'generated, replaces 0.04'],
    'README' => [qw(0.05 2004/04/25), 'generated, replaces 0.04'],
    'lib/Data/Secs2.pm' => [qw(1.18 2004/04/25), 'revised 1.17'],
    't/Data/Secs2.d' => [qw(0.04 2004/04/25), 'revised 0.03'],
    't/Data/Secs2.pm' => [qw(0.04 2004/04/25), 'revised 0.03'],
    't/Data/Secs2.t' => [qw(0.05 2004/04/25), 'revised 0.04'],
    't/Data/File/Package.pm' => [qw(1.16 2004/04/25), 'unchanged'],
    't/Data/File/SmartNL.pm' => [qw(1.13 2004/04/25), 'unchanged'],
    't/Data/Text/Scrub.pm' => [qw(1.11 2004/04/25), 'unchanged'],
    't/Data/Test/Tech.pm' => [qw(1.21 2004/04/25), 'revised 1.2'],
    't/Data/Data/SecsPack.pm' => [qw(0.03 2004/04/25), 'revised 0.02'],

);

########
# The ExtUtils::SVDmaker module uses the data after the __DATA__ 
# token to automatically generate this file.
#
# Don't edit anything before __DATA_. Edit instead
# the data after the __DATA__ token.
#
# ANY CHANGES MADE BEFORE the  __DATA__ token WILL BE LOST
#
# the next time ExtUtils::SVDmaker generates this file.
#
#



=head1 Title Page

 Software Version Description

 for

  Data::Secs2 - pack, unpack, format, transform between Perl data and SEMI E5-94 nested data

 Revision: C

 Version: 0.05

 Date: 2004/04/25

 Prepared for: General Public 

 Prepared by:  SoftwareDiamonds.com E<lt>support@SoftwareDiamonds.comE<gt>

 Copyright: copyright � 2003 2004 Software Diamonds

 Classification: NONE

=head1 1.0 SCOPE

This paragraph identifies and provides an overview
of the released files.

=head2 1.1 Identification

This release,
identified in L<3.2|/3.2 Inventory of software contents>,
is a collection of Perl modules that
extend the capabilities of the Perl language.

=head2 1.2 System overview

The 'Data::Strify' module provides a canoncial string for data
no matter how many nests of arrays and hashes it contains.

=head2 1.3 Document overview.

This document releases Data::Secs2 version 0.05
providing a description of the inventory, installation
instructions and other information necessary to
utilize and track this release.

=head1 3.0 VERSION DESCRIPTION

All file specifications in this SVD
use the Unix operating
system file specification.

=head2 3.1 Inventory of materials released.

This document releases the file 

 Data-Secs2-0.05.tar.gz

found at the following repository(s):

  http://www.softwarediamonds/packages/
  http://www.perl.com/CPAN/authors/id/S/SO/SOFTDIA/

Restrictions regarding duplication and license provisions
are as follows:

=over 4

=item Copyright.

copyright � 2003 2004 Software Diamonds

=item Copyright holder contact.

 603 882-0846 E<lt>support@SoftwareDiamonds.comE<gt>

=item License.

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

=back

=head2 3.2 Inventory of software contents

The content of the released, compressed, archieve file,
consists of the following files:

 file                                                         version date       comment
 ------------------------------------------------------------ ------- ---------- ------------------------
 lib/Docs/Site_SVD/Data_Secs2.pm                              0.05    2004/04/25 revised 0.04
 MANIFEST                                                     0.05    2004/04/25 generated, replaces 0.04
 Makefile.PL                                                  0.05    2004/04/25 generated, replaces 0.04
 README                                                       0.05    2004/04/25 generated, replaces 0.04
 lib/Data/Secs2.pm                                            1.18    2004/04/25 revised 1.17
 t/Data/Secs2.d                                               0.04    2004/04/25 revised 0.03
 t/Data/Secs2.pm                                              0.04    2004/04/25 revised 0.03
 t/Data/Secs2.t                                               0.05    2004/04/25 revised 0.04
 t/Data/File/Package.pm                                       1.16    2004/04/25 unchanged
 t/Data/File/SmartNL.pm                                       1.13    2004/04/25 unchanged
 t/Data/Text/Scrub.pm                                         1.11    2004/04/25 unchanged
 t/Data/Test/Tech.pm                                          1.21    2004/04/25 revised 1.2
 t/Data/Data/SecsPack.pm                                      0.03    2004/04/25 revised 0.02


=head2 3.3 Changes

Changes to past revisions are as follows: 

=over 4

=item Data-Strify-0.01

Originated

=item Data-Secs2-0.01

Abandoned Data::Dumper in favor of SEMI E35,
SECS-II standard for stringifying Perl data.

=item Data-Secs2-0.02

Added arrayification of REF and GLOB references.
Thus, the 'Data::Secs2' module will nest into
REF and GLOB references.

=item Data-Secs2-0.03

The lastest build of Test::STDmaker expects the test library in the same
directory as the test script.
Coordiated with the lastest Test::STDmaker by moving the
test library from tlib to t/Data, the same directory as the test script
and deleting the test library File::TestPath program module.

=item Data-Secs2-0.04

Greater expanded the subroutines to the following: arrayify, itemify, 
listify, neuterify, scalarize, secsify, stringify, transify, vectorize.
Added descriptions and tests for the new functions.

=item Data-Secs2-0.05

Change Perlify to allow translation packed multi-cell number item elements
as number arrays. Single cell number item elements are still translated
as a number scalar. This situation exists because SEMI E5 treats a
single text character and a single number as a cell, while Perl treats
multiple characters and a single number as a scalar. Granted
there is the Perl function C<vec> that allows some manipulation
of multicell data. But it is stretch to say that because of the 
C<vec> function that multicell integers are an underlying Perl data
type.

Added C<new> and C<config> subroutine to supply the default, (startup)
options for each subroutine in the C<Data::Secs2> program module.
The default options may be overriden with a subroutine input for
most subroutines.

The Perl undef was not finding a home in the SECS2 Object. Found a home
as a SEMI E5-94 empty list L[0].

Added support for the C<CODE> underlying Perl data type.

=back

=head2 3.4 Adaptation data.

This installation requires that the installation site
has the Perl programming language installed.
There are no other additional requirements or tailoring needed of 
configurations files, adaptation data or other software needed for this
installation particular to any installation site.

=head2 3.5 Related documents.

There are no related documents needed for the installation and
test of this release.

=head2 3.6 Installation instructions.

Instructions for installation, installation tests
and installation support are as follows:

=over 4

=item Installation Instructions.

To installed the release file, use the CPAN module
pr PPM module in the Perl release
or the INSTALL.PL script at the following web site:

 http://packages.SoftwareDiamonds.com

Follow the instructions for the the chosen installation software.

If all else fails, the file may be manually installed.
Enter one of the following repositories in a web browser:

  http://www.softwarediamonds/packages/
  http://www.perl.com/CPAN/authors/id/S/SO/SOFTDIA/

Right click on 'Data-Secs2-0.05.tar.gz' and download to a temporary
installation directory.
Enter the following where $make is 'nmake' for microsoft
windows; otherwise 'make'.

 gunzip Data-Secs2-0.05.tar.gz
 tar -xf Data-Secs2-0.05.tar
 perl Makefile.PL
 $make test
 $make install

On Microsoft operating system, nmake, tar, and gunzip 
must be in the exeuction path. If tar and gunzip are
not install, download and install unxutils from

 http://packages.softwarediamonds.com

=item Prerequistes.

 'Data::SecsPack' => '0.01',


=item Security, privacy, or safety precautions.

None.

=item Installation Tests.

Most Perl installation software will run the following test script(s)
as part of the installation:

 t/Data/Secs2.t

=item Installation support.

If there are installation problems or questions with the installation
contact

 603 882-0846 E<lt>support@SoftwareDiamonds.comE<gt>

=back

=head2 3.7 Possible problems and known errors

None.

=head1 4.0 NOTES

The following are useful acronyms:

=over 4

=item .d

extension for a Perl demo script file

=item .pm

extension for a Perl Library Module

=item .t

extension for a Perl test script file

=item POD

Plain Old Documentation

=back

=head1 2.0 SEE ALSO

=over 4

=item L<Data::Secs2|Data::Secs2> 

=item L<Docs::US_DOD::SVD|Docs::US_DOD::SVD> 

=item L<Docs::US_DOD::STD|Docs::US_DOD::STD> 


=back

=for html
<hr>
<p><br>
<!-- BLK ID="PROJECT_MANAGEMENT" -->
<!-- /BLK -->
<p><br>
<!-- BLK ID="NOTICE" -->
<!-- /BLK -->
<p><br>
<!-- BLK ID="OPT-IN" -->
<!-- /BLK -->
<p><br>
<!-- BLK ID="LOG_CGI" -->
<!-- /BLK -->
<p><br>

=cut

1;

__DATA__

DISTNAME: Data-Secs2^
VERSION : 0.05^
FREEZE: 1^
PREVIOUS_DISTNAME:  ^
PREVIOUS_RELEASE: 0.04^
REVISION: C^

AUTHOR  : SoftwareDiamonds.com E<lt>support@SoftwareDiamonds.comE<gt>^
ABSTRACT: pack, unpack, format, transform between Perl data and SEMI E5-94 SECS-II nested data^
TITLE   :  Data::Secs2 - pack, unpack, format, transform between Perl data and SEMI E5-94 nested data^
END_USER: General Public^
COPYRIGHT: copyright � 2003 2004 Software Diamonds^
CLASSIFICATION: NONE^
TEMPLATE:  ^
CSS: help.css^
SVD_FSPEC: Unix^
REPOSITORY_DIR: packages^
REPOSITORY: 
  http://www.softwarediamonds/packages/
  http://www.perl.com/CPAN/authors/id/S/SO/SOFTDIA/
^

COMPRESS: gzip^
COMPRESS_SUFFIX: gz^

RESTRUCTURE:  ^
CHANGE2CURRENT:  ^

AUTO_REVISE: 
lib/Data/Secs2.pm
t/Data/Secs2.*
lib/File/Package.pm => t/Data/File/Package.pm
lib/File/SmartNL.pm => t/Data/File/SmartNL.pm
lib/Text/Scrub.pm => t/Data/Text/Scrub.pm
lib/Test/Tech.pm => t/Data/Test/Tech.pm
lib/Data/SecsPack.pm => t/Data/Data/SecsPack.pm
^

PREREQ_PM:
'Data::SecsPack' => '0.01',
^
README_PODS: lib/Data/Secs2.pm^
TESTS: t/Data/Secs2.t^
EXE_FILES:  ^

CHANGES:

Changes to past revisions are as follows: 

\=over 4

\=item Data-Strify-0.01

Originated

\=item Data-Secs2-0.01

Abandoned Data::Dumper in favor of SEMI E35,
SECS-II standard for stringifying Perl data.

\=item Data-Secs2-0.02

Added arrayification of REF and GLOB references.
Thus, the 'Data::Secs2' module will nest into
REF and GLOB references.

\=item Data-Secs2-0.03

The lastest build of Test::STDmaker expects the test library in the same
directory as the test script.
Coordiated with the lastest Test::STDmaker by moving the
test library from tlib to t/Data, the same directory as the test script
and deleting the test library File::TestPath program module.

\=item Data-Secs2-0.04

Greater expanded the subroutines to the following: arrayify, itemify, 
listify, neuterify, scalarize, secsify, stringify, transify, vectorize.
Added descriptions and tests for the new functions.

\=item Data-Secs2-0.05

Change Perlify to allow translation packed multi-cell number item elements
as number arrays. Single cell number item elements are still translated
as a number scalar. This situation exists because SEMI E5 treats a
single text character and a single number as a cell, while Perl treats
multiple characters and a single number as a scalar. Granted
there is the Perl function C<vec> that allows some manipulation
of multicell data. But it is stretch to say that because of the 
C<vec> function that multicell integers are an underlying Perl data
type.

Added C<new> and C<config> subroutine to supply the default, (startup)
options for each subroutine in the C<Data::Secs2> program module.
The default options may be overriden with a subroutine input for
most subroutines.

The Perl undef was not finding a home in the SECS2 Object. Found a home
as a SEMI E5-94 empty list L[0].

Added support for the C<CODE> underlying Perl data type.

\=back

^

DOCUMENT_OVERVIEW:
This document releases ${NAME} version ${VERSION}
providing a description of the inventory, installation
instructions and other information necessary to
utilize and track this release.
^

CAPABILITIES:
The 'Data::Strify' module provides a canoncial string for data
no matter how many nests of arrays and hashes it contains.
^

PROBLEMS:
None.
^

LICENSE:
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


INSTALLATION:
To installed the release file, use the CPAN module
pr PPM module in the Perl release
or the INSTALL.PL script at the following web site:

 http://packages.SoftwareDiamonds.com

Follow the instructions for the the chosen installation software.

If all else fails, the file may be manually installed.
Enter one of the following repositories in a web browser:

${REPOSITORY}

Right click on '${DIST_FILE}' and download to a temporary
installation directory.
Enter the following where $make is 'nmake' for microsoft
windows; otherwise 'make'.

 gunzip ${BASE_DIST_FILE}.tar.${COMPRESS_SUFFIX}
 tar -xf ${BASE_DIST_FILE}.tar
 perl Makefile.PL
 $make test
 $make install

On Microsoft operating system, nmake, tar, and gunzip 
must be in the exeuction path. If tar and gunzip are
not install, download and install unxutils from

 http://packages.softwarediamonds.com
^

SUPPORT: 603 882-0846 E<lt>support@SoftwareDiamonds.comE<gt>
^

SUPPORT: 603 882-0846 E<lt>support@SoftwareDiamonds.comE<gt>^

NOTES:
The following are useful acronyms:

\=over 4

\=item .d

extension for a Perl demo script file

\=item .pm

extension for a Perl Library Module

\=item .t

extension for a Perl test script file

\=item POD

Plain Old Documentation

\=back
^

SEE_ALSO: 
\=over 4

\=item L<Data::Secs2|Data::Secs2> 

\=item L<Docs::US_DOD::SVD|Docs::US_DOD::SVD> 

\=item L<Docs::US_DOD::STD|Docs::US_DOD::STD> 


\=back
^


HTML:
<hr>
<p><br>
<!-- BLK ID="PROJECT_MANAGEMENT" -->
<!-- /BLK -->
<p><br>
<!-- BLK ID="NOTICE" -->
<!-- /BLK -->
<p><br>
<!-- BLK ID="OPT-IN" -->
<!-- /BLK -->
<p><br>
<!-- BLK ID="LOG_CGI" -->
<!-- /BLK -->
<p><br>
^
~-~


