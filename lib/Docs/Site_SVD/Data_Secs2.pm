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
$VERSION = '0.03';
$DATE = '2004/04/13';
$FILE = __FILE__;

use vars qw(%INVENTORY);
%INVENTORY = (
    'lib/Docs/Site_SVD/Data_Secs2.pm' => [qw(0.03 2004/04/13), 'revised 0.02'],
    'MANIFEST' => [qw(0.03 2004/04/13), 'generated, replaces 0.02'],
    'Makefile.PL' => [qw(0.03 2004/04/13), 'generated, replaces 0.02'],
    'README' => [qw(0.03 2004/04/13), 'generated, replaces 0.02'],
    'lib/Data/Secs2.pm' => [qw(1.16 2004/04/13), 'revised 1.15'],
    't/Data/Secs2.d' => [qw(0.02 2004/04/13), 'revised 0.01'],
    't/Data/Secs2.pm' => [qw(0.02 2004/04/13), 'revised 0.01'],
    't/Data/Secs2.t' => [qw(0.03 2004/04/13), 'revised 0.02'],
    't/Data/File/Package.pm' => [qw(1.15 2004/04/13), 'new'],
    't/Data/File/SmartNL.pm' => [qw(1.13 2004/04/13), 'new'],
    't/Data/Text/Scrub.pm' => [qw(1.11 2004/04/13), 'new'],
    't/Data/Test/Tech.pm' => [qw(1.17 2004/04/13), 'new'],
    't/Data/Data/SecsPack.pm' => [qw(0.02 2004/04/13), 'new'],

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

  File::FileUtil - Generic file utilites developed originally for Test::STDmaker and ExtUtils::SVDmaker

 Revision: B

 Version: 0.03

 Date: 2004/04/13

 Prepared for: General Public 

 Prepared by:  SoftwareDiamonds.com E<lt>support@SoftwareDiamonds.comE<gt>

 Copyright: copyright © 2003 Software Diamonds

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

This document releases Data::Secs2 version 0.03
providing a description of the inventory, installation
instructions and other information necessary to
utilize and track this release.

=head1 3.0 VERSION DESCRIPTION

All file specifications in this SVD
use the Unix operating
system file specification.

=head2 3.1 Inventory of materials released.

This document releases the file 

 Data-Secs2-0.03.tar.gz

found at the following repository(s):

  http://www.softwarediamonds/packages/
  http://www.perl.com/CPAN-local/authors/id/S/SO/SOFTDIA/

Restrictions regarding duplication and license provisions
are as follows:

=over 4

=item Copyright.

copyright © 2003 Software Diamonds

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
 lib/Docs/Site_SVD/Data_Secs2.pm                              0.03    2004/04/13 revised 0.02
 MANIFEST                                                     0.03    2004/04/13 generated, replaces 0.02
 Makefile.PL                                                  0.03    2004/04/13 generated, replaces 0.02
 README                                                       0.03    2004/04/13 generated, replaces 0.02
 lib/Data/Secs2.pm                                            1.16    2004/04/13 revised 1.15
 t/Data/Secs2.d                                               0.02    2004/04/13 revised 0.01
 t/Data/Secs2.pm                                              0.02    2004/04/13 revised 0.01
 t/Data/Secs2.t                                               0.03    2004/04/13 revised 0.02
 t/Data/File/Package.pm                                       1.15    2004/04/13 new
 t/Data/File/SmartNL.pm                                       1.13    2004/04/13 new
 t/Data/Text/Scrub.pm                                         1.11    2004/04/13 new
 t/Data/Test/Tech.pm                                          1.17    2004/04/13 new
 t/Data/Data/SecsPack.pm                                      0.02    2004/04/13 new


=head2 3.3 Changes

Changes to past revisions are as follows: 

=over 4

=item Data-Strify-0.01

Originated

=item Data-Secs2-0.01

Abandoned Data::Dumper in favor of L<SEMI|http://www.semi.org> E35,
SECS-II, standard for stringifying Perl data.

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
  http://www.perl.com/CPAN-local/authors/id/S/SO/SOFTDIA/

Right click on 'Data-Secs2-0.03.tar.gz' and download to a temporary
installation directory.
Enter the following where $make is 'nmake' for microsoft
windows; otherwise 'make'.

 gunzip Data-Secs2-0.03.tar.gz
 tar -xf Data-Secs2-0.03.tar
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

The only reason this exists is that it appears earlier versions
of the 'Data::Dumper' module, say version 2.102 and before, did
not sort the hash keys.

For at least 'Data::Dumper' version 2.12 there is a sort keys
option and 'Data::Dumper' should be used directly.

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
VERSION : 0.03^
FREEZE: 1^
PREVIOUS_DISTNAME:  ^
PREVIOUS_RELEASE: 0.02^
REVISION: B^

AUTHOR  : SoftwareDiamonds.com E<lt>support@SoftwareDiamonds.comE<gt>^
ABSTRACT: Generic file utilities originally developed to support Test::STDmaker^
TITLE   :  File::FileUtil - Generic file utilites developed originally for Test::STDmaker and ExtUtils::SVDmaker^
END_USER: General Public^
COPYRIGHT: copyright © 2003 Software Diamonds^
CLASSIFICATION: NONE^
TEMPLATE:  ^
CSS: help.css^
SVD_FSPEC: Unix^
REPOSITORY_DIR: packages^
REPOSITORY: 
  http://www.softwarediamonds/packages/
  http://www.perl.com/CPAN-local/authors/id/S/SO/SOFTDIA/
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

Abandoned Data::Dumper in favor of L<SEMI|http://www.semi.org> E35,
SECS-II, standard for stringifying Perl data.

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
The only reason this exists is that it appears earlier versions
of the 'Data::Dumper' module, say version 2.102 and before, did
not sort the hash keys.

For at least 'Data::Dumper' version 2.12 there is a sort keys
option and 'Data::Dumper' should be used directly.
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


