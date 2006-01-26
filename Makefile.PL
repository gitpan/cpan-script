# $Id: Makefile.PL,v 1.7 2006/01/26 08:12:12 comdog Exp $
use ExtUtils::MakeMaker;

eval "use Test::Manifest 1.14";

WriteMakefile(
    'NAME'		    => 'cpan-script',
	'VERSION'       => '1.52',
	
	'EXE_FILES' =>  [ 'cpan' ],
	    	
	'PREREQ_PM' => {
		'Test::More'        => '0',
		},

	'MAN1PODS' => {
		'cpan' => '$(INST_MAN1DIR)/cpan.1',
		},
		
	clean => { FILES => '*.bak cpan-*' },
	);
