# $Id: compile.t 1692 2005-12-24 00:59:08Z comdog $

use Test::More tests => 1;

my $file = 'blib/script/cpan';

print "bail out! Script file is missing!" unless -e $file;

my $output = `$^X -c $file 2>&1`;

print "bail out! Script file does not compile!: The author must be a " 
	. idiot() . "."
	unless like( $output, qr/syntax OK$/, 'script compiles' );
	
sub idiot
	{
	my @names = qw(moron idiot buffoon jerk dummy);
	
	$names[ int rand( $#names + 1 ) ];
	}
