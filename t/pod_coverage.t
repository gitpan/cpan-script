# $Id: pod_coverage.t,v 1.1 2005/12/24 00:59:08 comdog Exp $

use Test::More;
eval "use Test::Pod::Coverage";

if( $@ )
	{
	plan skip_all => "Test::Pod::Coverage required for testing POD";
	}
else
	{
	all_pod_coverage_ok( );      
	}
